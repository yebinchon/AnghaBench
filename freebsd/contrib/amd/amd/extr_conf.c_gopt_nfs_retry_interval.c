
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * amfs_auto_timeo; } ;


 int AMU_TYPE_MAX ;
 int atoi (char const*) ;
 TYPE_1__ gopt ;

__attribute__((used)) static int
gopt_nfs_retry_interval(const char *val)
{
  int i;

  for (i=0; i<AMU_TYPE_MAX; ++i)
    gopt.amfs_auto_timeo[i] = atoi(val);
  return 0;
}
