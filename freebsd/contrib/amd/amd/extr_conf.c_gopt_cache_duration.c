
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ am_timeo; } ;


 scalar_t__ AM_TTL ;
 scalar_t__ atoi (char const*) ;
 TYPE_1__ gopt ;

__attribute__((used)) static int
gopt_cache_duration(const char *val)
{
  gopt.am_timeo = atoi(val);
  if (gopt.am_timeo <= 0)
    gopt.am_timeo = AM_TTL;
  return 0;
}
