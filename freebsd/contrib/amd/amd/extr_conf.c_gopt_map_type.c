
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_type; } ;


 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int mapc_type_exists (char const*) ;
 int stderr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_map_type(const char *val)
{

  if (!mapc_type_exists(val)) {
    fprintf(stderr, "conf: no such map type \"%s\"\n", val);
    return 1;
  }
  gopt.map_type = xstrdup(val);
  return 0;
}
