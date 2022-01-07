
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct TYPE_4__ {int type; int protocol; int fwmark; int timeout; int dport; int daddr; } ;
struct TYPE_3__ {int protocol; int fwmark; int timeout; int dport; int daddr; int state; int flags; int type; } ;
union ip_vs_sync_conn {TYPE_2__ v6; TYPE_1__ v4; } ;
struct ip_vs_sync_v6 {int dummy; } ;
struct ip_vs_sync_v4 {int dummy; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned int num_states; int name; } ;
struct ip_vs_conn_param {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;


 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int IPVS_OPT_F_PARAM ;
 int IPVS_OPT_F_PE_DATA ;
 int IPVS_OPT_F_PE_NAME ;
 int IPVS_OPT_F_SEQ_DATA ;



 int IP_VS_CONN_F_BACKUP_MASK ;
 int IP_VS_CONN_F_SYNC ;
 int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG (int,char*,...) ;
 int IP_VS_PEDATA_MAXLEN ;
 int IP_VS_PENAME_MAXLEN ;
 int STYPE_F_INET6 ;
 scalar_t__ ip_vs_conn_fill_param_sync (unsigned int,union ip_vs_sync_conn*,struct ip_vs_conn_param*,int *,unsigned int,int *,unsigned int) ;
 int ip_vs_proc_conn (struct ip_vs_conn_param*,int,unsigned int,int,unsigned int,union nf_inet_addr*,int ,int,int,struct ip_vs_sync_conn_options*,struct ip_vs_protocol*) ;
 int ip_vs_proc_seqopt (int *,int,int*,struct ip_vs_sync_conn_options*) ;
 int ip_vs_proc_str (int *,int,unsigned int*,int **,int ,int*,int ) ;
 struct ip_vs_protocol* ip_vs_proto_get (int) ;
 int ntohl (int ) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static inline int ip_vs_proc_sync_conn(__u8 *p, __u8 *msg_end)
{
 struct ip_vs_sync_conn_options opt;
 union ip_vs_sync_conn *s;
 struct ip_vs_protocol *pp;
 struct ip_vs_conn_param param;
 __u32 flags;
 unsigned int af, state, pe_data_len=0, pe_name_len=0;
 __u8 *pe_data=((void*)0), *pe_name=((void*)0);
 __u32 opt_flags=0;
 int retc=0;

 s = (union ip_vs_sync_conn *) p;

 if (s->v6.type & STYPE_F_INET6) {




  IP_VS_DBG(3,"BACKUP, IPv6 msg received, and IPVS is not compiled for IPv6\n");
  retc = 10;
  goto out;

 } else if (!s->v4.type) {
  af = AF_INET;
  p += sizeof(struct ip_vs_sync_v4);
 } else {
  return -10;
 }
 if (p > msg_end)
  return -20;


 while (p < msg_end) {
  int ptype;
  int plen;

  if (p+2 > msg_end)
   return -30;
  ptype = *(p++);
  plen = *(p++);

  if (!plen || ((p + plen) > msg_end))
   return -40;

  switch (ptype & ~IPVS_OPT_F_PARAM) {
  case 128:
   if (ip_vs_proc_seqopt(p, plen, &opt_flags, &opt))
    return -50;
   break;

  case 130:
   if (ip_vs_proc_str(p, plen, &pe_data_len, &pe_data,
        IP_VS_PEDATA_MAXLEN, &opt_flags,
        IPVS_OPT_F_PE_DATA))
    return -60;
   break;

  case 129:
   if (ip_vs_proc_str(p, plen,&pe_name_len, &pe_name,
        IP_VS_PENAME_MAXLEN, &opt_flags,
        IPVS_OPT_F_PE_NAME))
    return -70;
   break;

  default:

   if (!(ptype & IPVS_OPT_F_PARAM)) {
    IP_VS_DBG(3, "BACKUP, Unknown mandatory param %d found\n",
       ptype & ~IPVS_OPT_F_PARAM);
    retc = 20;
    goto out;
   }
  }
  p += plen;
 }


 flags = ntohl(s->v4.flags) & IP_VS_CONN_F_BACKUP_MASK;
 flags |= IP_VS_CONN_F_SYNC;
 state = ntohs(s->v4.state);

 if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
  pp = ip_vs_proto_get(s->v4.protocol);
  if (!pp) {
   IP_VS_DBG(3,"BACKUP, Unsupported protocol %u\n",
    s->v4.protocol);
   retc = 30;
   goto out;
  }
  if (state >= pp->num_states) {
   IP_VS_DBG(3, "BACKUP, Invalid %s state %u\n",
    pp->name, state);
   retc = 40;
   goto out;
  }
 } else {

  pp = ((void*)0);
  if (state > 0) {
   IP_VS_DBG(3, "BACKUP, Invalid template state %u\n",
    state);
   state = 0;
  }
 }
 if (ip_vs_conn_fill_param_sync(af, s, &param,
     pe_data, pe_data_len,
     pe_name, pe_name_len)) {
  retc = 50;
  goto out;
 }

 if (af == AF_INET)
  ip_vs_proc_conn(&param, flags, state, s->v4.protocol, af,
    (union nf_inet_addr *)&s->v4.daddr, s->v4.dport,
    ntohl(s->v4.timeout), ntohl(s->v4.fwmark),
    (opt_flags & IPVS_OPT_F_SEQ_DATA ? &opt : ((void*)0)),
    pp);
 return 0;

out:
 IP_VS_DBG(2, "BACKUP, Single msg dropped err:%d\n", retc);
 return retc;

}
