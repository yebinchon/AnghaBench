
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CFM_SUN_MAP_SYNTAX ;
 scalar_t__ STREQ (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int stderr ;

__attribute__((used)) static int
gopt_sun_map_syntax(const char *val)
{
  if (STREQ(val, "yes")) {
    gopt.flags |= CFM_SUN_MAP_SYNTAX;
    return 0;
  } else if (STREQ(val, "no")) {
    gopt.flags &= ~CFM_SUN_MAP_SYNTAX;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to sun_map_syntax \"%s\"\n", val);
  return 1;
}
