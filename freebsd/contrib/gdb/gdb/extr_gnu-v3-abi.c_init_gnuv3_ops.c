
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shortname; char* longname; char* doc; int baseclass_offset; int virtual_fn_field; int rtti_type; int is_operator_name; int is_vtable_name; int is_constructor_name; int is_destructor_name; } ;


 int build_gdb_vtable_type ;
 TYPE_1__ gnu_v3_abi_ops ;
 int gnuv3_baseclass_offset ;
 int gnuv3_is_operator_name ;
 int gnuv3_is_vtable_name ;
 int gnuv3_rtti_type ;
 int gnuv3_virtual_fn_field ;
 int is_gnu_v3_mangled_ctor ;
 int is_gnu_v3_mangled_dtor ;
 int register_gdbarch_data (int ) ;
 int vtable_type_gdbarch_data ;

__attribute__((used)) static void
init_gnuv3_ops (void)
{
  vtable_type_gdbarch_data = register_gdbarch_data (build_gdb_vtable_type);

  gnu_v3_abi_ops.shortname = "gnu-v3";
  gnu_v3_abi_ops.longname = "GNU G++ Version 3 ABI";
  gnu_v3_abi_ops.doc = "G++ Version 3 ABI";
  gnu_v3_abi_ops.is_destructor_name = is_gnu_v3_mangled_dtor;
  gnu_v3_abi_ops.is_constructor_name = is_gnu_v3_mangled_ctor;
  gnu_v3_abi_ops.is_vtable_name = gnuv3_is_vtable_name;
  gnu_v3_abi_ops.is_operator_name = gnuv3_is_operator_name;
  gnu_v3_abi_ops.rtti_type = gnuv3_rtti_type;
  gnu_v3_abi_ops.virtual_fn_field = gnuv3_virtual_fn_field;
  gnu_v3_abi_ops.baseclass_offset = gnuv3_baseclass_offset;
}
