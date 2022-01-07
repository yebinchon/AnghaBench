
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sub_domain; } ;


 TYPE_1__ gopt ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_local_domain(const char *val)
{
  gopt.sub_domain = xstrdup(val);
  return 0;
}
