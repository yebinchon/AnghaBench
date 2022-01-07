
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfm_type; } ;
typedef TYPE_1__ cf_map_t ;


 int fprintf (int ,char*,char const*) ;
 int mapc_type_exists (char const*) ;
 int stderr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
ropt_map_type(const char *val, cf_map_t *cfm)
{

  if (!mapc_type_exists(val)) {
    fprintf(stderr, "conf: no such map type \"%s\"\n", val);
    return 1;
  }
  cfm->cfm_type = xstrdup(val);
  return 0;
}
