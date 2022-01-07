
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exec_map_timeout; } ;


 scalar_t__ AMFS_EXEC_MAP_TIMEOUT ;
 scalar_t__ atoi (char const*) ;
 TYPE_1__ gopt ;

__attribute__((used)) static int
gopt_exec_map_timeout(const char *val)
{
  gopt.exec_map_timeout = atoi(val);
  if (gopt.exec_map_timeout <= 0)
    gopt.exec_map_timeout = AMFS_EXEC_MAP_TIMEOUT;
  return 0;
}
