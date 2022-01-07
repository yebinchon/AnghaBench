
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shortname; char* longname; char* doc; int baseclass_offset; int rtti_type; int virtual_fn_field; int is_operator_name; int is_vtable_name; int is_constructor_name; int is_destructor_name; } ;


 int gnuv2_baseclass_offset ;
 TYPE_1__ hpacc_abi_ops ;
 int hpacc_is_constructor_name ;
 int hpacc_is_destructor_name ;
 int hpacc_is_operator_name ;
 int hpacc_is_vtable_name ;
 int hpacc_value_rtti_type ;
 int hpacc_virtual_fn_field ;

__attribute__((used)) static void
init_hpacc_ops (void)
{
  hpacc_abi_ops.shortname = "hpaCC";
  hpacc_abi_ops.longname = "HP aCC ABI";
  hpacc_abi_ops.doc = "HP aCC ABI";
  hpacc_abi_ops.is_destructor_name = hpacc_is_destructor_name;
  hpacc_abi_ops.is_constructor_name = hpacc_is_constructor_name;
  hpacc_abi_ops.is_vtable_name = hpacc_is_vtable_name;
  hpacc_abi_ops.is_operator_name = hpacc_is_operator_name;
  hpacc_abi_ops.virtual_fn_field = hpacc_virtual_fn_field;
  hpacc_abi_ops.rtti_type = hpacc_value_rtti_type;




  hpacc_abi_ops.baseclass_offset = gnuv2_baseclass_offset;
}
