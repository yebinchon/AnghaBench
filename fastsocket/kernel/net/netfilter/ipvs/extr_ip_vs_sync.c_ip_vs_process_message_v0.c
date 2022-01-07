
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sync_mesg_v0 {int nr_conns; } ;
struct ip_vs_sync_conn_v0 {unsigned int protocol; int dport; int daddr; int vport; int vaddr; int cport; int caddr; int state; int flags; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned int num_states; int name; } ;
struct ip_vs_conn_param {int dummy; } ;


 int AF_INET ;
 int FULL_CONN_SIZE ;
 unsigned int IP_VS_CONN_F_HASHED ;
 unsigned int IP_VS_CONN_F_SEQ_MASK ;
 unsigned int IP_VS_CONN_F_SYNC ;
 unsigned int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG (int,char*,unsigned int,...) ;
 int IP_VS_ERR_RL (char*) ;
 int SIMPLE_CONN_SIZE ;
 int ip_vs_conn_fill_param (int ,unsigned int,union nf_inet_addr const*,int ,union nf_inet_addr const*,int ,struct ip_vs_conn_param*) ;
 int ip_vs_proc_conn (struct ip_vs_conn_param*,unsigned int,unsigned int,unsigned int,int ,union nf_inet_addr*,int ,int ,int ,struct ip_vs_sync_conn_options*,struct ip_vs_protocol*) ;
 struct ip_vs_protocol* ip_vs_proto_get (unsigned int) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static void ip_vs_process_message_v0(const char *buffer, const size_t buflen)
{
 struct ip_vs_sync_mesg_v0 *m = (struct ip_vs_sync_mesg_v0 *)buffer;
 struct ip_vs_sync_conn_v0 *s;
 struct ip_vs_sync_conn_options *opt;
 struct ip_vs_protocol *pp;
 struct ip_vs_conn_param param;
 char *p;
 int i;

 p = (char *)buffer + sizeof(struct ip_vs_sync_mesg_v0);
 for (i=0; i<m->nr_conns; i++) {
  unsigned flags, state;

  if (p + SIMPLE_CONN_SIZE > buffer+buflen) {
   IP_VS_ERR_RL("BACKUP v0, bogus conn\n");
   return;
  }
  s = (struct ip_vs_sync_conn_v0 *) p;
  flags = ntohs(s->flags) | IP_VS_CONN_F_SYNC;
  flags &= ~IP_VS_CONN_F_HASHED;
  if (flags & IP_VS_CONN_F_SEQ_MASK) {
   opt = (struct ip_vs_sync_conn_options *)&s[1];
   p += FULL_CONN_SIZE;
   if (p > buffer+buflen) {
    IP_VS_ERR_RL("BACKUP v0, Dropping buffer bogus conn options\n");
    return;
   }
  } else {
   opt = ((void*)0);
   p += SIMPLE_CONN_SIZE;
  }

  state = ntohs(s->state);
  if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
   pp = ip_vs_proto_get(s->protocol);
   if (!pp) {
    IP_VS_DBG(2, "BACKUP v0, Unsupported protocol %u\n",
     s->protocol);
    continue;
   }
   if (state >= pp->num_states) {
    IP_VS_DBG(2, "BACKUP v0, Invalid %s state %u\n",
     pp->name, state);
    continue;
   }
  } else {

   pp = ((void*)0);
   if (state > 0) {
    IP_VS_DBG(2, "BACKUP v0, Invalid template state %u\n",
     state);
    state = 0;
   }
  }

  ip_vs_conn_fill_param(AF_INET, s->protocol,
          (const union nf_inet_addr *)&s->caddr,
          s->cport,
          (const union nf_inet_addr *)&s->vaddr,
          s->vport, &param);


  ip_vs_proc_conn(&param, flags, state, s->protocol, AF_INET,
    (union nf_inet_addr *)&s->daddr, s->dport,
    0, 0, opt, pp);
 }
}
