
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ can_dereference (struct type*) ;
 int printf_filtered (char*) ;

__attribute__((used)) static void
print_value_flags (struct type *t)
{
  if (can_dereference (t))
    printf_filtered ("*");
  else
    printf_filtered ("-");
}
