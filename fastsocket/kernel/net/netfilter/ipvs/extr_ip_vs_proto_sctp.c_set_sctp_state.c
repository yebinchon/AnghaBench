
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int * timeout_table; int name; } ;
struct ip_vs_dest {int inactconns; int activeconns; } ;
struct ip_vs_conn {scalar_t__ af; size_t state; int flags; int timeout; int refcnt; int cport; int caddr; int dport; int daddr; struct ip_vs_dest* dest; } ;
typedef int sctp_sctphdr_t ;
struct TYPE_5__ {unsigned char type; int length; } ;
typedef TYPE_1__ sctp_chunkhdr_t ;
typedef int _sctpch ;
struct TYPE_6__ {int next_state; } ;


 scalar_t__ AF_INET ;
 int IP_VS_CONN_F_INACTIVE ;
 int IP_VS_DBG_ADDR (scalar_t__,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int IP_VS_DIR_OUTPUT ;
 int IP_VS_SCTP_S_ESTABLISHED ;
 unsigned char SCTP_CID_ABORT ;
 unsigned char SCTP_CID_COOKIE_ACK ;
 unsigned char SCTP_CID_COOKIE_ECHO ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int ip_hdrlen (struct sk_buff const*) ;
 int ntohs (int ) ;
 int* sctp_events ;
 int sctp_state_name (int) ;
 TYPE_4__** sctp_states_table ;
 TYPE_1__* skb_header_pointer (struct sk_buff const*,int,int,TYPE_1__*) ;

__attribute__((used)) static inline int
set_sctp_state(struct ip_vs_protocol *pp, struct ip_vs_conn *cp,
  int direction, const struct sk_buff *skb)
{
 sctp_chunkhdr_t _sctpch, *sch;
 unsigned char chunk_type;
 int event, next_state;
 int ihl;




 ihl = ip_hdrlen(skb);


 sch = skb_header_pointer(skb, ihl + sizeof(sctp_sctphdr_t),
    sizeof(_sctpch), &_sctpch);
 if (sch == ((void*)0))
  return 0;

 chunk_type = sch->type;
 if ((sch->type == SCTP_CID_COOKIE_ECHO) ||
     (sch->type == SCTP_CID_COOKIE_ACK)) {
  sch = skb_header_pointer(skb, (ihl + sizeof(sctp_sctphdr_t) +
    sch->length), sizeof(_sctpch), &_sctpch);
  if (sch) {
   if (sch->type == SCTP_CID_ABORT)
    chunk_type = sch->type;
  }
 }

 event = sctp_events[chunk_type];




 if (direction == IP_VS_DIR_OUTPUT)
  event++;



 next_state = sctp_states_table[cp->state][event].next_state;

 if (next_state != cp->state) {
  struct ip_vs_dest *dest = cp->dest;

  IP_VS_DBG_BUF(8, "%s %s  %s:%d->"
    "%s:%d state: %s->%s conn->refcnt:%d\n",
    pp->name,
    ((direction == IP_VS_DIR_OUTPUT) ?
     "output " : "input "),
    IP_VS_DBG_ADDR(cp->af, &cp->daddr),
    ntohs(cp->dport),
    IP_VS_DBG_ADDR(cp->af, &cp->caddr),
    ntohs(cp->cport),
    sctp_state_name(cp->state),
    sctp_state_name(next_state),
    atomic_read(&cp->refcnt));
  if (dest) {
   if (!(cp->flags & IP_VS_CONN_F_INACTIVE) &&
    (next_state != IP_VS_SCTP_S_ESTABLISHED)) {
    atomic_dec(&dest->activeconns);
    atomic_inc(&dest->inactconns);
    cp->flags |= IP_VS_CONN_F_INACTIVE;
   } else if ((cp->flags & IP_VS_CONN_F_INACTIVE) &&
       (next_state == IP_VS_SCTP_S_ESTABLISHED)) {
    atomic_inc(&dest->activeconns);
    atomic_dec(&dest->inactconns);
    cp->flags &= ~IP_VS_CONN_F_INACTIVE;
   }
  }
 }

  cp->timeout = pp->timeout_table[cp->state = next_state];

  return 1;
}
