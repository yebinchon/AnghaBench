
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op_sys_full; } ;


 TYPE_1__ gopt ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_full_os(const char *val)
{
  gopt.op_sys_full = xstrdup(val);
  return 0;
}
