
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;


 int list_del (int *) ;
 TYPE_1__ sctp_af_inet6 ;

void sctp_v6_pf_exit(void)
{
 list_del(&sctp_af_inet6.list);
}
