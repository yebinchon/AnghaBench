
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int ** xcoff_types; } ;
typedef int * debug_type ;


 int * DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int XCOFF_TYPE_COUNT ;
 char* _ (char*) ;
 int abort () ;
 int * debug_make_bool_type (void*,int) ;
 int * debug_make_complex_type (void*,int) ;
 int * debug_make_float_type (void*,int) ;
 int * debug_make_int_type (void*,int,int ) ;
 int * debug_make_void_type (void*) ;
 int * debug_name_type (void*,char const*,int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static debug_type
stab_xcoff_builtin_type (void *dhandle, struct stab_handle *info,
    int typenum)
{
  debug_type rettype;
  const char *name;

  if (typenum >= 0 || typenum < -XCOFF_TYPE_COUNT)
    {
      fprintf (stderr, _("Unrecognized XCOFF type %d\n"), typenum);
      return DEBUG_TYPE_NULL;
    }
  if (info->xcoff_types[-typenum] != ((void*)0))
    return info->xcoff_types[-typenum];

  switch (-typenum)
    {
    case 1:


      name = "int";
      rettype = debug_make_int_type (dhandle, 4, FALSE);
      break;
    case 2:
      name = "char";
      rettype = debug_make_int_type (dhandle, 1, FALSE);
      break;
    case 3:
      name = "short";
      rettype = debug_make_int_type (dhandle, 2, FALSE);
      break;
    case 4:
      name = "long";
      rettype = debug_make_int_type (dhandle, 4, FALSE);
      break;
    case 5:
      name = "unsigned char";
      rettype = debug_make_int_type (dhandle, 1, TRUE);
      break;
    case 6:
      name = "signed char";
      rettype = debug_make_int_type (dhandle, 1, FALSE);
      break;
    case 7:
      name = "unsigned short";
      rettype = debug_make_int_type (dhandle, 2, TRUE);
      break;
    case 8:
      name = "unsigned int";
      rettype = debug_make_int_type (dhandle, 4, TRUE);
      break;
    case 9:
      name = "unsigned";
      rettype = debug_make_int_type (dhandle, 4, TRUE);
    case 10:
      name = "unsigned long";
      rettype = debug_make_int_type (dhandle, 4, TRUE);
      break;
    case 11:
      name = "void";
      rettype = debug_make_void_type (dhandle);
      break;
    case 12:

      name = "float";
      rettype = debug_make_float_type (dhandle, 4);
      break;
    case 13:

      name = "double";
      rettype = debug_make_float_type (dhandle, 8);
      break;
    case 14:



      name = "long double";
      rettype = debug_make_float_type (dhandle, 8);
      break;
    case 15:
      name = "integer";
      rettype = debug_make_int_type (dhandle, 4, FALSE);
      break;
    case 16:
      name = "boolean";
      rettype = debug_make_bool_type (dhandle, 4);
      break;
    case 17:
      name = "short real";
      rettype = debug_make_float_type (dhandle, 4);
      break;
    case 18:
      name = "real";
      rettype = debug_make_float_type (dhandle, 8);
      break;
    case 19:

      name = "stringptr";
      rettype = ((void*)0);
      break;
    case 20:

      name = "character";
      rettype = debug_make_int_type (dhandle, 1, TRUE);
      break;
    case 21:
      name = "logical*1";
      rettype = debug_make_bool_type (dhandle, 1);
      break;
    case 22:
      name = "logical*2";
      rettype = debug_make_bool_type (dhandle, 2);
      break;
    case 23:
      name = "logical*4";
      rettype = debug_make_bool_type (dhandle, 4);
      break;
    case 24:
      name = "logical";
      rettype = debug_make_bool_type (dhandle, 4);
      break;
    case 25:

      name = "complex";
      rettype = debug_make_complex_type (dhandle, 8);
      break;
    case 26:

      name = "double complex";
      rettype = debug_make_complex_type (dhandle, 16);
      break;
    case 27:
      name = "integer*1";
      rettype = debug_make_int_type (dhandle, 1, FALSE);
      break;
    case 28:
      name = "integer*2";
      rettype = debug_make_int_type (dhandle, 2, FALSE);
      break;
    case 29:
      name = "integer*4";
      rettype = debug_make_int_type (dhandle, 4, FALSE);
      break;
    case 30:

      name = "wchar";
      rettype = debug_make_int_type (dhandle, 2, FALSE);
      break;
    case 31:
      name = "long long";
      rettype = debug_make_int_type (dhandle, 8, FALSE);
      break;
    case 32:
      name = "unsigned long long";
      rettype = debug_make_int_type (dhandle, 8, TRUE);
      break;
    case 33:
      name = "logical*8";
      rettype = debug_make_bool_type (dhandle, 8);
      break;
    case 34:
      name = "integer*8";
      rettype = debug_make_int_type (dhandle, 8, FALSE);
      break;
    default:
      abort ();
    }

  rettype = debug_name_type (dhandle, name, rettype);

  info->xcoff_types[-typenum] = rettype;

  return rettype;
}
