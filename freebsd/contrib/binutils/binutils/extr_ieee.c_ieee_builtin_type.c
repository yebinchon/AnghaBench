
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** builtins; } ;
struct ieee_info {TYPE_1__ types; void* dhandle; } ;
typedef enum builtin_types { ____Placeholder_builtin_types } builtin_types ;
typedef int * debug_type ;
typedef int bfd_byte ;


 unsigned int BUILTIN_TYPE_COUNT ;
 int * DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int assert (int) ;
 int * debug_make_array_type (void*,int *,int *,int ,int,int ) ;
 int * debug_make_float_type (void*,int) ;
 int * debug_make_int_type (void*,int,int ) ;
 int * debug_make_pointer_type (void*,int *) ;
 int * debug_make_void_type (void*) ;
 int * debug_name_type (void*,char const*,int *) ;
 int ieee_error (struct ieee_info*,int const*,int ) ;

__attribute__((used)) static debug_type
ieee_builtin_type (struct ieee_info *info, const bfd_byte *p,
     unsigned int indx)
{
  void *dhandle;
  debug_type type;
  const char *name;

  if (indx < BUILTIN_TYPE_COUNT
      && info->types.builtins[indx] != DEBUG_TYPE_NULL)
    return info->types.builtins[indx];

  dhandle = info->dhandle;

  if (indx >= 32 && indx < 64)
    {
      type = debug_make_pointer_type (dhandle,
          ieee_builtin_type (info, p, indx - 32));
      assert (indx < BUILTIN_TYPE_COUNT);
      info->types.builtins[indx] = type;
      return type;
    }

  switch ((enum builtin_types) indx)
    {
    default:
      ieee_error (info, p, _("unknown builtin type"));
      return ((void*)0);

    case 136:
      type = debug_make_void_type (dhandle);
      name = ((void*)0);
      break;

    case 128:
      type = debug_make_void_type (dhandle);
      name = "void";
      break;

    case 141:
      type = debug_make_int_type (dhandle, 1, FALSE);
      name = "signed char";
      break;

    case 134:
      type = debug_make_int_type (dhandle, 1, TRUE);
      name = "unsigned char";
      break;

    case 137:
      type = debug_make_int_type (dhandle, 2, FALSE);
      name = "signed short int";
      break;

    case 129:
      type = debug_make_int_type (dhandle, 2, TRUE);
      name = "unsigned short int";
      break;

    case 140:
      type = debug_make_int_type (dhandle, 4, FALSE);
      name = "signed long";
      break;

    case 132:
      type = debug_make_int_type (dhandle, 4, TRUE);
      name = "unsigned long";
      break;

    case 139:
      type = debug_make_int_type (dhandle, 8, FALSE);
      name = "signed long long";
      break;

    case 131:
      type = debug_make_int_type (dhandle, 8, TRUE);
      name = "unsigned long long";
      break;

    case 150:
      type = debug_make_float_type (dhandle, 4);
      name = "float";
      break;

    case 151:
      type = debug_make_float_type (dhandle, 8);
      name = "double";
      break;

    case 146:


      type = debug_make_float_type (dhandle, 12);
      name = "long double";
      break;

    case 145:
      type = debug_make_float_type (dhandle, 16);
      name = "long long double";
      break;

    case 144:
      type = debug_make_array_type (dhandle,
        ieee_builtin_type (info, p,
             ((unsigned int)
       152)),
        ieee_builtin_type (info, p,
             ((unsigned int)
       148)),
        0, -1, TRUE);
      name = "QUOTED STRING";
      break;

    case 149:

      type = debug_make_int_type (dhandle, 4, TRUE);
      name = "instruction address";
      break;

    case 148:


      type = debug_make_int_type (dhandle, 4, FALSE);
      name = "int";
      break;

    case 135:


      type = debug_make_int_type (dhandle, 4, TRUE);
      name = "unsigned";
      break;

    case 133:


      type = debug_make_int_type (dhandle, 4, TRUE);
      name = "unsigned int";
      break;

    case 152:
      type = debug_make_int_type (dhandle, 1, FALSE);
      name = "char";
      break;

    case 147:
      type = debug_make_int_type (dhandle, 4, FALSE);
      name = "long";
      break;

    case 143:
      type = debug_make_int_type (dhandle, 2, FALSE);
      name = "short";
      break;

    case 130:
      type = debug_make_int_type (dhandle, 2, TRUE);
      name = "unsigned short";
      break;

    case 142:
      type = debug_make_int_type (dhandle, 2, FALSE);
      name = "short int";
      break;

    case 138:
      type = debug_make_int_type (dhandle, 2, FALSE);
      name = "signed short";
      break;

    case 153:
      ieee_error (info, p, _("BCD float type not supported"));
      return DEBUG_TYPE_NULL;
    }

  if (name != ((void*)0))
    type = debug_name_type (dhandle, name, type);

  assert (indx < BUILTIN_TYPE_COUNT);

  info->types.builtins[indx] = type;

  return type;
}
