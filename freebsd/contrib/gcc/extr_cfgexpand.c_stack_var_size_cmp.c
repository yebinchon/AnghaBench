
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int decl; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 unsigned int DECL_UID (int ) ;
 TYPE_1__* stack_vars ;

__attribute__((used)) static int
stack_var_size_cmp (const void *a, const void *b)
{
  HOST_WIDE_INT sa = stack_vars[*(const size_t *)a].size;
  HOST_WIDE_INT sb = stack_vars[*(const size_t *)b].size;
  unsigned int uida = DECL_UID (stack_vars[*(const size_t *)a].decl);
  unsigned int uidb = DECL_UID (stack_vars[*(const size_t *)b].decl);

  if (sa < sb)
    return -1;
  if (sa > sb)
    return 1;


  if (uida < uidb)
    return -1;
  if (uida > uidb)
    return 1;
  return 0;
}
