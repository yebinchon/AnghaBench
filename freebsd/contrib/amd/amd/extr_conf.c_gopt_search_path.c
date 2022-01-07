
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int search_path; } ;


 TYPE_1__ gopt ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_search_path(const char *val)
{
  gopt.search_path = xstrdup(val);
  return 0;
}
