
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int sctp_af_inet ;
 int sctp_pf_inet ;
 int sctp_register_af (int *) ;
 int sctp_register_pf (int *,int ) ;

__attribute__((used)) static void sctp_v4_pf_init(void)
{

 sctp_register_pf(&sctp_pf_inet, PF_INET);
 sctp_register_af(&sctp_af_inet);
}
