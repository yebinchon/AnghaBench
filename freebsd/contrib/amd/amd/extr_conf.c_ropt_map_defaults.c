
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfm_defaults; } ;
typedef TYPE_1__ cf_map_t ;


 int xstrdup (char const*) ;

__attribute__((used)) static int
ropt_map_defaults(const char *val, cf_map_t *cfm)
{
  cfm->cfm_defaults = xstrdup(val);
  return 0;
}
