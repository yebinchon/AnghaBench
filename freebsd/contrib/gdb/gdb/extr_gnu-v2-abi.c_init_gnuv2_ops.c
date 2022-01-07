
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shortname; char* longname; char* doc; int baseclass_offset; int rtti_type; int virtual_fn_field; int is_operator_name; int is_vtable_name; int is_constructor_name; int is_destructor_name; } ;


 TYPE_1__ gnu_v2_abi_ops ;
 int gnuv2_baseclass_offset ;
 int gnuv2_is_constructor_name ;
 int gnuv2_is_destructor_name ;
 int gnuv2_is_operator_name ;
 int gnuv2_is_vtable_name ;
 int gnuv2_value_rtti_type ;
 int gnuv2_virtual_fn_field ;

__attribute__((used)) static void
init_gnuv2_ops (void)
{
  gnu_v2_abi_ops.shortname = "gnu-v2";
  gnu_v2_abi_ops.longname = "GNU G++ Version 2 ABI";
  gnu_v2_abi_ops.doc = "G++ Version 2 ABI";
  gnu_v2_abi_ops.is_destructor_name = gnuv2_is_destructor_name;
  gnu_v2_abi_ops.is_constructor_name = gnuv2_is_constructor_name;
  gnu_v2_abi_ops.is_vtable_name = gnuv2_is_vtable_name;
  gnu_v2_abi_ops.is_operator_name = gnuv2_is_operator_name;
  gnu_v2_abi_ops.virtual_fn_field = gnuv2_virtual_fn_field;
  gnu_v2_abi_ops.rtti_type = gnuv2_value_rtti_type;
  gnu_v2_abi_ops.baseclass_offset = gnuv2_baseclass_offset;
}
