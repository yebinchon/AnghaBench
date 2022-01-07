
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;



 struct type* to_fixed_array_type (struct type*,struct value*,int ) ;
 struct type* to_fixed_record_type (struct type*,char*,int ,int *) ;
 struct type* to_fixed_variant_branch_type (struct type*,char*,int ,struct value*) ;

struct type *
ada_to_fixed_type (struct type *type, char *valaddr, CORE_ADDR address,
     struct value *dval)
{
  CHECK_TYPEDEF (type);
  switch (TYPE_CODE (type))
    {
    default:
      return type;
    case 129:
      return to_fixed_record_type (type, valaddr, address, ((void*)0));
    case 130:
      return to_fixed_array_type (type, dval, 0);
    case 128:
      if (dval == ((void*)0))
 return type;
      else
 return to_fixed_variant_branch_type (type, valaddr, address, dval);
    }
}
