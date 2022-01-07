
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TYPE_FIELD_BITPOS (struct type*,int ) ;
 int current_gdbarch ;
 struct type* gdbarch_data (int ,int ) ;
 int vtable_field_virtual_functions ;
 int vtable_type_gdbarch_data ;

__attribute__((used)) static int
vtable_address_point_offset (void)
{
  struct type *vtable_type = gdbarch_data (current_gdbarch,
        vtable_type_gdbarch_data);

  return (TYPE_FIELD_BITPOS (vtable_type, vtable_field_virtual_functions)
          / TARGET_CHAR_BIT);
}
