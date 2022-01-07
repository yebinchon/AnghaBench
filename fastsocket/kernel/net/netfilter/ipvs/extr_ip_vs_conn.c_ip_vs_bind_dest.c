
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {scalar_t__ u_threshold; int flags; int persistconns; int inactconns; int activeconns; int refcnt; int conn_flags; } ;
struct ip_vs_conn {scalar_t__ protocol; int flags; int refcnt; int state; int dport; int daddr; int af; int vport; int vaddr; int cport; int caddr; struct ip_vs_dest* dest; } ;


 scalar_t__ IPPROTO_UDP ;
 int IP_VS_CONN_F_FWD_MASK ;
 unsigned int IP_VS_CONN_F_INACTIVE ;
 int IP_VS_CONN_F_NOOUTPUT ;
 unsigned int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_CONN_F_SYNC ;
 int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,unsigned int,unsigned int,unsigned int) ;
 int IP_VS_DEST_F_OVERLOAD ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 scalar_t__ ip_vs_dest_totalconns (struct ip_vs_dest*) ;
 int ip_vs_fwd_tag (struct ip_vs_conn*) ;
 int ip_vs_proto_name (scalar_t__) ;
 int ntohs (int ) ;

__attribute__((used)) static inline void
ip_vs_bind_dest(struct ip_vs_conn *cp, struct ip_vs_dest *dest)
{
 unsigned int conn_flags;


 if (!dest)
  return;


 atomic_inc(&dest->refcnt);

 conn_flags = atomic_read(&dest->conn_flags);
 if (cp->protocol != IPPROTO_UDP)
  conn_flags &= ~IP_VS_CONN_F_ONE_PACKET;

 if (cp->flags & IP_VS_CONN_F_SYNC) {



  if (!(cp->flags & IP_VS_CONN_F_TEMPLATE))
   conn_flags &= ~IP_VS_CONN_F_INACTIVE;

  cp->flags &= ~(IP_VS_CONN_F_FWD_MASK | IP_VS_CONN_F_NOOUTPUT);
 }
 cp->flags |= conn_flags;
 cp->dest = dest;

 IP_VS_DBG_BUF(7, "Bind-dest %s c:%s:%d v:%s:%d "
        "d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d "
        "dest->refcnt:%d\n",
        ip_vs_proto_name(cp->protocol),
        IP_VS_DBG_ADDR(cp->af, &cp->caddr), ntohs(cp->cport),
        IP_VS_DBG_ADDR(cp->af, &cp->vaddr), ntohs(cp->vport),
        IP_VS_DBG_ADDR(cp->af, &cp->daddr), ntohs(cp->dport),
        ip_vs_fwd_tag(cp), cp->state,
        cp->flags, atomic_read(&cp->refcnt),
        atomic_read(&dest->refcnt));


 if (!(cp->flags & IP_VS_CONN_F_TEMPLATE)) {




  if (!(cp->flags & IP_VS_CONN_F_INACTIVE))
   atomic_inc(&dest->activeconns);
  else
   atomic_inc(&dest->inactconns);
 } else {


  atomic_inc(&dest->persistconns);
 }

 if (dest->u_threshold != 0 &&
     ip_vs_dest_totalconns(dest) >= dest->u_threshold)
  dest->flags |= IP_VS_DEST_F_OVERLOAD;
}
