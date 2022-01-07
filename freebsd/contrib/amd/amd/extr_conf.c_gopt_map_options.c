
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_options; } ;


 TYPE_1__ gopt ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_map_options(const char *val)
{
  gopt.map_options = xstrdup(val);
  return 0;
}
