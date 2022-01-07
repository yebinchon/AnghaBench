
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 char* DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int TYPE_BASECLASS_BITPOS (struct type*,scalar_t__) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* TYPE_VPTR_BASETYPE (struct type*) ;
 scalar_t__ TYPE_VPTR_FIELDNO (struct type*) ;
 scalar_t__ VALUE_ADDRESS (int ) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct type* cp_lookup_rtti_type (char*,int *) ;
 char* cplus_demangle (char*,int) ;
 int fill_in_vptr_fieldno (struct type*) ;
 int is_vtable_name (char*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 scalar_t__* strchr (char*,char) ;
 int value_as_address (int ) ;
 struct value* value_cast (struct type*,struct value*) ;
 int value_field (struct value*,scalar_t__) ;

__attribute__((used)) static struct type *
gnuv2_value_rtti_type (struct value *v, int *full, int *top, int *using_enc)
{
  struct type *known_type;
  struct type *rtti_type;
  CORE_ADDR coreptr;
  struct value *vp;
  long top_offset = 0;
  char rtti_type_name[256];
  CORE_ADDR vtbl;
  struct minimal_symbol *minsym;
  struct symbol *sym;
  char *demangled_name;
  struct type *btype;

  if (full)
    *full = 0;
  if (top)
    *top = -1;
  if (using_enc)
    *using_enc = 0;


  known_type = VALUE_TYPE (v);
  CHECK_TYPEDEF (known_type);

  if (TYPE_CODE (known_type) != TYPE_CODE_CLASS)
    return ((void*)0);







  if (TYPE_VPTR_FIELDNO(known_type) < 0)
    fill_in_vptr_fieldno(known_type);


  if (TYPE_VPTR_FIELDNO(known_type) < 0)
    return ((void*)0);




  btype = TYPE_VPTR_BASETYPE (known_type);
  CHECK_TYPEDEF (btype);
  if (btype != known_type )
    {
      v = value_cast (btype, v);
      if (using_enc)
        *using_enc=1;
    }





  if (VALUE_ADDRESS (value_field (v, TYPE_VPTR_FIELDNO (known_type))) == 0)
    return ((void*)0);

  vtbl=value_as_address(value_field(v,TYPE_VPTR_FIELDNO(known_type)));


  minsym=lookup_minimal_symbol_by_pc(vtbl);
  if (minsym==((void*)0)
      || (demangled_name=DEPRECATED_SYMBOL_NAME (minsym))==((void*)0)
      || !is_vtable_name (demangled_name))
    return ((void*)0);


  demangled_name=cplus_demangle(demangled_name,DMGL_PARAMS|DMGL_ANSI);
  *(strchr(demangled_name,' '))=0;



  rtti_type = cp_lookup_rtti_type (demangled_name, ((void*)0));
  if (rtti_type == ((void*)0))
    return ((void*)0);

  if (TYPE_N_BASECLASSES(rtti_type) > 1 && full && (*full) != 1)
    {
      if (top)
        *top=TYPE_BASECLASS_BITPOS(rtti_type,TYPE_VPTR_FIELDNO(rtti_type))/8;
      if (top && ((*top) >0))
        {
          if (TYPE_LENGTH(rtti_type) > TYPE_LENGTH(known_type))
            {
              if (full)
                *full=0;
            }
          else
            {
              if (full)
                *full=1;
            }
        }
    }
  else
    {
      if (full)
        *full=1;
    }

  return rtti_type;
}
