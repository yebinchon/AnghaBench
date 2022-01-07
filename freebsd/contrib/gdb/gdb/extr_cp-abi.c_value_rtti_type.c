
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {struct type* (* rtti_type ) (struct value*,int*,int*,int*) ;} ;


 TYPE_1__ current_cp_abi ;
 struct type* stub1 (struct value*,int*,int*,int*) ;

struct type *
value_rtti_type (struct value *v, int *full, int *top, int *using_enc)
{
  if ((current_cp_abi.rtti_type) == ((void*)0))
    return ((void*)0);
  return (*current_cp_abi.rtti_type) (v, full, top, using_enc);
}
