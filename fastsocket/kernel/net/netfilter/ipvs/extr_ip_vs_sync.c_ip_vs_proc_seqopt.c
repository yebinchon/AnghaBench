
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_conn_options {int out_seq; int in_seq; } ;
typedef int __u8 ;
typedef int __u32 ;


 int EINVAL ;
 int IPVS_OPT_F_SEQ_DATA ;
 int IP_VS_DBG (int,char*) ;
 int ntoh_seq (int *,int *) ;

__attribute__((used)) static inline int ip_vs_proc_seqopt(__u8 *p, unsigned int plen,
        __u32 *opt_flags,
        struct ip_vs_sync_conn_options *opt)
{
 struct ip_vs_sync_conn_options *topt;

 topt = (struct ip_vs_sync_conn_options *)p;

 if (plen != sizeof(struct ip_vs_sync_conn_options)) {
  IP_VS_DBG(2, "BACKUP, bogus conn options length\n");
  return -EINVAL;
 }
 if (*opt_flags & IPVS_OPT_F_SEQ_DATA) {
  IP_VS_DBG(2, "BACKUP, conn options found twice\n");
  return -EINVAL;
 }
 ntoh_seq(&topt->in_seq, &opt->in_seq);
 ntoh_seq(&topt->out_seq, &opt->out_seq);
 *opt_flags |= IPVS_OPT_F_SEQ_DATA;
 return 0;
}
