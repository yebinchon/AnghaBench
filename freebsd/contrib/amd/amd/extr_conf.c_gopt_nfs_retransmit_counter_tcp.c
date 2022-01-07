
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * amfs_auto_retrans; } ;


 size_t AMU_TYPE_TCP ;
 int atoi (char const*) ;
 TYPE_1__ gopt ;

__attribute__((used)) static int
gopt_nfs_retransmit_counter_tcp(const char *val)
{
  gopt.amfs_auto_retrans[AMU_TYPE_TCP] = atoi(val);
  return 0;
}
