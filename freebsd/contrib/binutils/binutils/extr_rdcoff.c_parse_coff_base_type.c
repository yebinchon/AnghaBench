
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union internal_auxent {int dummy; } internal_auxent ;
struct coff_types {int * basic; } ;
struct coff_symbols {int dummy; } ;
typedef int debug_type ;
typedef int debug_field ;
typedef int bfd_signed_vma ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 int DEBUG_TYPE_NULL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;







 int T_MAX ;
 int * coff_get_slot (struct coff_types*,long) ;
 int debug_make_enum_type (void*,char const**,int *) ;
 int debug_make_float_type (void*,int) ;
 int debug_make_int_type (void*,int,scalar_t__) ;
 int debug_make_struct_type (void*,scalar_t__,int ,int *) ;
 int debug_make_void_type (void*) ;
 int debug_name_type (void*,char const*,int ) ;
 int parse_coff_enum_type (int *,struct coff_symbols*,struct coff_types*,union internal_auxent*,void*) ;
 int parse_coff_struct_type (int *,struct coff_symbols*,struct coff_types*,int,union internal_auxent*,void*) ;

__attribute__((used)) static debug_type
parse_coff_base_type (bfd *abfd, struct coff_symbols *symbols,
        struct coff_types *types, long coff_symno, int ntype,
        union internal_auxent *pauxent, void *dhandle)
{
  debug_type ret;
  bfd_boolean set_basic;
  const char *name;
  debug_type *slot;

  if (ntype >= 0
      && ntype <= T_MAX
      && types->basic[ntype] != DEBUG_TYPE_NULL)
    return types->basic[ntype];

  set_basic = TRUE;
  name = ((void*)0);

  switch (ntype)
    {
    default:
      ret = debug_make_void_type (dhandle);
      break;

    case 136:
    case 128:
      ret = debug_make_void_type (dhandle);
      name = "void";
      break;

    case 143:
      ret = debug_make_int_type (dhandle, 1, FALSE);
      name = "char";
      break;

    case 135:
      ret = debug_make_int_type (dhandle, 2, FALSE);
      name = "short";
      break;

    case 139:

      ret = debug_make_int_type (dhandle, 4, FALSE);
      name = "int";
      break;

    case 137:
      ret = debug_make_int_type (dhandle, 4, FALSE);
      name = "long";
      break;

    case 140:
      ret = debug_make_float_type (dhandle, 4);
      name = "float";
      break;

    case 142:
      ret = debug_make_float_type (dhandle, 8);
      name = "double";
      break;

    case 138:
      ret = debug_make_float_type (dhandle, 12);
      name = "long double";
      break;

    case 133:
      ret = debug_make_int_type (dhandle, 1, TRUE);
      name = "unsigned char";
      break;

    case 129:
      ret = debug_make_int_type (dhandle, 2, TRUE);
      name = "unsigned short";
      break;

    case 132:
      ret = debug_make_int_type (dhandle, 4, TRUE);
      name = "unsigned int";
      break;

    case 131:
      ret = debug_make_int_type (dhandle, 4, TRUE);
      name = "unsigned long";
      break;

    case 134:
      if (pauxent == ((void*)0))
 ret = debug_make_struct_type (dhandle, TRUE, 0,
          (debug_field *) ((void*)0));
      else
 ret = parse_coff_struct_type (abfd, symbols, types, ntype, pauxent,
          dhandle);

      slot = coff_get_slot (types, coff_symno);
      *slot = ret;

      set_basic = FALSE;
      break;

    case 130:
      if (pauxent == ((void*)0))
 ret = debug_make_struct_type (dhandle, FALSE, 0, (debug_field *) ((void*)0));
      else
 ret = parse_coff_struct_type (abfd, symbols, types, ntype, pauxent,
          dhandle);

      slot = coff_get_slot (types, coff_symno);
      *slot = ret;

      set_basic = FALSE;
      break;

    case 141:
      if (pauxent == ((void*)0))
 ret = debug_make_enum_type (dhandle, (const char **) ((void*)0),
        (bfd_signed_vma *) ((void*)0));
      else
 ret = parse_coff_enum_type (abfd, symbols, types, pauxent, dhandle);

      slot = coff_get_slot (types, coff_symno);
      *slot = ret;

      set_basic = FALSE;
      break;
    }

  if (name != ((void*)0))
    ret = debug_name_type (dhandle, name, ret);

  if (set_basic
      && ntype >= 0
      && ntype <= T_MAX)
    types->basic[ntype] = ret;

  return ret;
}
