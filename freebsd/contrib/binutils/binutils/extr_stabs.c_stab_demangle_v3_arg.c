
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stab_handle {int dummy; } ;
struct TYPE_7__ {struct demangle_component* right; struct demangle_component* left; } ;
struct TYPE_6__ {char* string; int len; } ;
struct TYPE_5__ {int len; char* s; } ;
struct TYPE_8__ {TYPE_3__ s_binary; TYPE_2__ s_string; TYPE_1__ s_name; } ;
struct demangle_component {int type; TYPE_4__ u; } ;
typedef int * debug_type ;
typedef int debug_field ;
typedef int bfd_boolean ;


 int const DEBUG_FIELD_NULL ;
 int DEBUG_KIND_CLASS ;
 int DEBUG_KIND_ILLEGAL ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int FALSE ;
 int TRUE ;
 char* _ (char*) ;
 int abort () ;
 char* cplus_demangle_print (int,struct demangle_component*,int,size_t*) ;
 int * debug_get_field_type (void*,int const) ;
 int * debug_get_fields (void*,int *) ;
 char* debug_get_type_name (void*,int *) ;
 int * debug_make_bool_type (void*,int) ;
 int * debug_make_const_type (void*,int *) ;
 int * debug_make_float_type (void*,int) ;
 int * debug_make_function_type (void*,int *,int **,int ) ;
 int * debug_make_int_type (void*,int,int ) ;
 int * debug_make_pointer_type (void*,int *) ;
 int * debug_make_reference_type (void*,int *) ;
 int * debug_make_void_type (void*) ;
 int * debug_make_volatile_type (void*,int *) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int ** stab_demangle_v3_arglist (void*,struct stab_handle*,struct demangle_component*,int *) ;
 int * stab_find_tagged_type (void*,struct stab_handle*,char*,int,int ) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static debug_type
stab_demangle_v3_arg (void *dhandle, struct stab_handle *info,
        struct demangle_component *dc, debug_type context,
        bfd_boolean *pvarargs)
{
  debug_type dt;

  if (pvarargs != ((void*)0))
    *pvarargs = FALSE;

  switch (dc->type)
    {


    case 143:
    case 132:
    case 133:
    case 148:
    case 147:
    case 144:
    case 136:
    case 128:
    case 149:
    case 130:
    case 151:
    case 145:
    case 131:
    case 153:
    case 140:
    case 154:
    default:
      fprintf (stderr, _("Unrecognized demangle component %d\n"),
        (int) dc->type);
      return ((void*)0);

    case 142:
      if (context != ((void*)0))
 {
   const debug_field *fields;

   fields = debug_get_fields (dhandle, context);
   if (fields != ((void*)0))
     {


       for (; *fields != DEBUG_FIELD_NULL; fields++)
  {
    debug_type ft;
    const char *dn;

    ft = debug_get_field_type (dhandle, *fields);
    if (ft == ((void*)0))
      return ((void*)0);
    dn = debug_get_type_name (dhandle, ft);
    if (dn != ((void*)0)
        && (int) strlen (dn) == dc->u.s_name.len
        && strncmp (dn, dc->u.s_name.s, dc->u.s_name.len) == 0)
      return ft;
  }
     }
 }
      return stab_find_tagged_type (dhandle, info, dc->u.s_name.s,
        dc->u.s_name.len, DEBUG_KIND_ILLEGAL);

    case 139:
      context = stab_demangle_v3_arg (dhandle, info, dc->u.s_binary.left,
          context, ((void*)0));
      if (context == ((void*)0))
 return ((void*)0);
      return stab_demangle_v3_arg (dhandle, info, dc->u.s_binary.right,
       context, ((void*)0));

    case 134:
      {
 char *p;
 size_t alc;




 p = cplus_demangle_print (DMGL_PARAMS | DMGL_ANSI, dc, 20, &alc);
 if (p == ((void*)0))
   {
     fprintf (stderr, _("Failed to print demangled template\n"));
     return ((void*)0);
   }
 dt = stab_find_tagged_type (dhandle, info, p, strlen (p),
        DEBUG_KIND_CLASS);
 free (p);
 return dt;
      }

    case 135:
      return stab_find_tagged_type (dhandle, info, dc->u.s_string.string,
        dc->u.s_string.len, DEBUG_KIND_ILLEGAL);

    case 137:
    case 129:
    case 150:
    case 141:
    case 138:
      dt = stab_demangle_v3_arg (dhandle, info, dc->u.s_binary.left, ((void*)0),
     ((void*)0));
      if (dt == ((void*)0))
 return ((void*)0);

      switch (dc->type)
 {
 default:
   abort ();
 case 137:

   return dt;
 case 129:
   return debug_make_volatile_type (dhandle, dt);
 case 150:
   return debug_make_const_type (dhandle, dt);
 case 141:
   return debug_make_pointer_type (dhandle, dt);
 case 138:
   return debug_make_reference_type (dhandle, dt);
 }

    case 146:
      {
 debug_type *pargs;
 bfd_boolean varargs;

 if (dc->u.s_binary.left == ((void*)0))
   {




     dt = debug_make_void_type (dhandle);
   }
 else
   dt = stab_demangle_v3_arg (dhandle, info, dc->u.s_binary.left, ((void*)0),
         ((void*)0));
 if (dt == ((void*)0))
   return ((void*)0);

 pargs = stab_demangle_v3_arglist (dhandle, info,
       dc->u.s_binary.right,
       &varargs);
 if (pargs == ((void*)0))
   return ((void*)0);

 return debug_make_function_type (dhandle, dt, pargs, varargs);
      }

    case 152:
      {
 char *p;
 size_t alc;
 debug_type ret;




 p = cplus_demangle_print (DMGL_PARAMS | DMGL_ANSI, dc, 20, &alc);
 if (p == ((void*)0))
   {
     fprintf (stderr, _("Couldn't get demangled builtin type\n"));
     return ((void*)0);
   }



 if (strcmp (p, "signed char") == 0)
   ret = debug_make_int_type (dhandle, 1, FALSE);
 else if (strcmp (p, "bool") == 0)
   ret = debug_make_bool_type (dhandle, 1);
 else if (strcmp (p, "char") == 0)
   ret = debug_make_int_type (dhandle, 1, FALSE);
 else if (strcmp (p, "double") == 0)
   ret = debug_make_float_type (dhandle, 8);
 else if (strcmp (p, "long double") == 0)
   ret = debug_make_float_type (dhandle, 8);
 else if (strcmp (p, "float") == 0)
   ret = debug_make_float_type (dhandle, 4);
 else if (strcmp (p, "__float128") == 0)
   ret = debug_make_float_type (dhandle, 16);
 else if (strcmp (p, "unsigned char") == 0)
   ret = debug_make_int_type (dhandle, 1, TRUE);
 else if (strcmp (p, "int") == 0)
   ret = debug_make_int_type (dhandle, 4, FALSE);
 else if (strcmp (p, "unsigned int") == 0)
   ret = debug_make_int_type (dhandle, 4, TRUE);
 else if (strcmp (p, "long") == 0)
   ret = debug_make_int_type (dhandle, 4, FALSE);
 else if (strcmp (p, "unsigned long") == 0)
   ret = debug_make_int_type (dhandle, 4, TRUE);
 else if (strcmp (p, "__int128") == 0)
   ret = debug_make_int_type (dhandle, 16, FALSE);
 else if (strcmp (p, "unsigned __int128") == 0)
   ret = debug_make_int_type (dhandle, 16, TRUE);
 else if (strcmp (p, "short") == 0)
   ret = debug_make_int_type (dhandle, 2, FALSE);
 else if (strcmp (p, "unsigned short") == 0)
   ret = debug_make_int_type (dhandle, 2, TRUE);
 else if (strcmp (p, "void") == 0)
   ret = debug_make_void_type (dhandle);
 else if (strcmp (p, "wchar_t") == 0)
   ret = debug_make_int_type (dhandle, 4, TRUE);
 else if (strcmp (p, "long long") == 0)
   ret = debug_make_int_type (dhandle, 8, FALSE);
 else if (strcmp (p, "unsigned long long") == 0)
   ret = debug_make_int_type (dhandle, 8, TRUE);
 else if (strcmp (p, "...") == 0)
   {
     if (pvarargs == ((void*)0))
       fprintf (stderr, _("Unexpected demangled varargs\n"));
     else
       *pvarargs = TRUE;
     ret = ((void*)0);
   }
 else
   {
     fprintf (stderr, _("Unrecognized demangled builtin type\n"));
     ret = ((void*)0);
   }

 free (p);

 return ret;
      }
    }
}
