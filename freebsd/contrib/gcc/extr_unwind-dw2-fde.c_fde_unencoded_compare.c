
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct object {int dummy; } ;
struct TYPE_4__ {scalar_t__ pc_begin; } ;
typedef TYPE_1__ fde ;
typedef scalar_t__ _Unwind_Ptr ;



__attribute__((used)) static int
fde_unencoded_compare (struct object *ob __attribute__((unused)),
         const fde *x, const fde *y)
{
  _Unwind_Ptr x_ptr = *(_Unwind_Ptr *) x->pc_begin;
  _Unwind_Ptr y_ptr = *(_Unwind_Ptr *) y->pc_begin;

  if (x_ptr > y_ptr)
    return 1;
  if (x_ptr < y_ptr)
    return -1;
  return 0;
}
