
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int CORE_ADDR ;


 struct type* ada_to_fixed_type (struct type*,char*,int ,int *) ;
 struct value* value_from_contents_and_address (struct type*,char*,int ) ;

struct value *
ada_to_fixed_value (struct type *type0, char *valaddr, CORE_ADDR address,
      struct value *val0)
{
  struct type *type = ada_to_fixed_type (type0, valaddr, address, ((void*)0));
  if (type == type0 && val0 != ((void*)0))
    return val0;
  else
    return value_from_contents_and_address (type, valaddr, address);
}
