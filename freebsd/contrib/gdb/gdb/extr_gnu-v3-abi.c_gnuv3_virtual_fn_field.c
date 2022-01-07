
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct fn_field {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 struct type* TYPE_FN_FIELD_FCONTEXT (struct fn_field*,int) ;
 int TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 int TYPE_FN_FIELD_VOFFSET (struct fn_field*,int) ;
 char* TYPE_TAG_NAME (struct type*) ;
 struct type* TYPE_VPTR_BASETYPE (struct type*) ;
 scalar_t__ TYPE_VPTR_FIELDNO (struct type*) ;
 int VALUE_BFD_SECTION (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int builtin_type_int ;
 struct type* check_typedef (int ) ;
 int current_gdbarch ;
 int error (char*,...) ;
 int fill_in_vptr_fieldno (struct type*) ;
 struct type* gdbarch_data (int ,int ) ;
 struct type* lookup_pointer_type (int ) ;
 struct value* value_addr (struct value*) ;
 scalar_t__ value_as_address (int ) ;
 struct value* value_at_lazy (struct type*,scalar_t__,int ) ;
 struct value* value_cast (struct type*,struct value*) ;
 int value_field (struct value*,scalar_t__) ;
 int value_from_longest (int ,int ) ;
 struct value* value_subscript (int ,int ) ;
 scalar_t__ vtable_address_point_offset () ;
 scalar_t__ vtable_field_virtual_functions ;
 int vtable_type_gdbarch_data ;

__attribute__((used)) static struct value *
gnuv3_virtual_fn_field (struct value **value_p,
                        struct fn_field *f, int j,
   struct type *type, int offset)
{
  struct type *vtable_type = gdbarch_data (current_gdbarch,
        vtable_type_gdbarch_data);
  struct value *value = *value_p;
  struct type *value_type = check_typedef (VALUE_TYPE (value));
  struct type *vfn_base;
  CORE_ADDR vtable_address;
  struct value *vtable;
  struct value *vfn;


  if (TYPE_CODE (value_type) != TYPE_CODE_CLASS)
    error ("Only classes can have virtual functions.");


  vfn_base = TYPE_FN_FIELD_FCONTEXT (f, j);
  if (! vfn_base)




    vfn_base = TYPE_VPTR_BASETYPE (type);




  if (TYPE_VPTR_FIELDNO (vfn_base) < 0)
    fill_in_vptr_fieldno (vfn_base);
  if (TYPE_VPTR_FIELDNO (vfn_base) < 0)
    error ("Could not find virtual table pointer for class \"%s\".",
    TYPE_TAG_NAME (vfn_base) ? TYPE_TAG_NAME (vfn_base) : "<unknown>");




  if (vfn_base != value_type)
    value = value_cast (vfn_base, value);







  if (TYPE_VPTR_BASETYPE (vfn_base) != vfn_base)
    value = value_cast (TYPE_VPTR_BASETYPE (vfn_base), value);
  vtable_address
    = value_as_address (value_field (value, TYPE_VPTR_FIELDNO (vfn_base)));

  vtable = value_at_lazy (vtable_type,
                          vtable_address - vtable_address_point_offset (),
                          VALUE_BFD_SECTION (value));


  vfn = value_subscript (value_field (vtable, vtable_field_virtual_functions),
                         value_from_longest (builtin_type_int,
                                             TYPE_FN_FIELD_VOFFSET (f, j)));


  vfn = value_cast (lookup_pointer_type (TYPE_FN_FIELD_TYPE (f, j)),
                    vfn);



  *value_p = value_addr (value_cast (type, *value_p));

  return vfn;
}
