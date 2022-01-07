
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct fn_field {int dummy; } ;
struct TYPE_2__ {struct value* (* virtual_fn_field ) (struct value**,struct fn_field*,int,struct type*,int) ;} ;


 TYPE_1__ current_cp_abi ;
 struct value* stub1 (struct value**,struct fn_field*,int,struct type*,int) ;

struct value *
value_virtual_fn_field (struct value **arg1p, struct fn_field *f, int j,
   struct type *type, int offset)
{
  if ((current_cp_abi.virtual_fn_field) == ((void*)0))
    return ((void*)0);
  return (*current_cp_abi.virtual_fn_field) (arg1p, f, j, type, offset);
}
