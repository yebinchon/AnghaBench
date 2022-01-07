
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {int dummy; } ;


 struct exclude* xzalloc (int) ;

struct exclude *
new_exclude (void)
{
  return xzalloc (sizeof *new_exclude ());
}
