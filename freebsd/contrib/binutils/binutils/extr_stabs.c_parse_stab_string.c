
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_tag {char* name; struct stab_tag* next; int slot; } ;
struct stab_handle {int gcc_compiled; long symcount; struct stab_tag* tags; int self_crossref; int ** syms; int abfd; } ;
typedef int debug_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int asymbol ;


 int DEBUG_GLOBAL ;
 int DEBUG_LOCAL ;
 int DEBUG_LOCAL_STATIC ;
 int DEBUG_PARM_REFERENCE ;
 int DEBUG_PARM_REF_REG ;
 int DEBUG_PARM_REG ;
 int DEBUG_PARM_STACK ;
 int DEBUG_REGISTER ;
 int DEBUG_STATIC ;
 int DEBUG_TYPE_NULL ;
 int FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 int N_FUN ;
 int TRUE ;
 int _ (char*) ;
 int atof (char const*) ;
 int atoi (char const*) ;
 int bad_stab (char const*) ;
 char* bfd_asymbol_name (int *) ;
 int bfd_asymbol_value (int *) ;
 char bfd_get_symbol_leading_char (int ) ;
 int debug_make_function_type (void*,int ,int *,int ) ;
 int debug_make_pointer_type (void*,int ) ;
 int debug_name_type (void*,char*,int ) ;
 int debug_record_float_const (void*,char*,int ) ;
 int debug_record_function (void*,char*,int ,int,int ) ;
 int debug_record_int_const (void*,char*,int ) ;
 int debug_record_label (void*,char*,int ,int ) ;
 int debug_record_parameter (void*,char*,int ,int ,int ) ;
 int debug_record_typed_const (void*,char*,int ,int ) ;
 int debug_tag_type (void*,char*,int ) ;
 int parse_stab_type (void*,struct stab_handle*,char const*,char const**,int **) ;
 char* savestring (char const*,int) ;
 int stab_record_variable (void*,struct stab_handle*,char*,int ,int ,int ) ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 int warn_stab (char const*,int ) ;

__attribute__((used)) static bfd_boolean
parse_stab_string (void *dhandle, struct stab_handle *info, int stabtype,
     int desc, bfd_vma value, const char *string)
{
  const char *p;
  char *name;
  int type;
  debug_type dtype;
  bfd_boolean synonym;
  bfd_boolean self_crossref;
  unsigned int lineno;
  debug_type *slot;

  p = strchr (string, ':');
  if (p == ((void*)0))
    return TRUE;

  while (p[1] == ':')
    {
      p += 2;
      p = strchr (p, ':');
      if (p == ((void*)0))
 {
   bad_stab (string);
   return FALSE;
 }
    }




  if (info->gcc_compiled >= 2)
    lineno = desc;
  else
    lineno = 0;


  name = ((void*)0);
  if (string[0] == '$')
    {
      switch (string[1])
 {
 case 't':
   name = "this";
   break;
 case 'v':

   break;
 case 'e':
   name = "eh_throw";
   break;
 case '_':

   break;
 case 'X':

   break;
 default:
   warn_stab (string, _("unknown C++ encoded name"));
   break;
 }
    }

  if (name == ((void*)0))
    {
      if (p == string || (string[0] == ' ' && p == string + 1))
 name = ((void*)0);
      else
 name = savestring (string, p - string);
    }

  ++p;
  if (ISDIGIT (*p) || *p == '(' || *p == '-')
    type = 'l';
  else
    type = *p++;

  switch (type)
    {
    case 'c':






      if (*p != '=')
 {
   bad_stab (string);
   return FALSE;
 }
      ++p;
      switch (*p++)
 {
 case 'r':

   if (! debug_record_float_const (dhandle, name, atof (p)))
     return FALSE;
   break;
 case 'i':







   if (! debug_record_int_const (dhandle, name, atoi (p)))
     return FALSE;
   break;
 case 'e':




   dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0),
       &p, (debug_type **) ((void*)0));
   if (dtype == DEBUG_TYPE_NULL)
     return FALSE;
   if (*p != ',')
     {
       bad_stab (string);
       return FALSE;
     }
   if (! debug_record_typed_const (dhandle, name, dtype, atoi (p)))
     return FALSE;
   break;
 default:
   bad_stab (string);
   return FALSE;
 }

      break;

    case 'C':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0),
          &p, (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_label (dhandle, name, dtype, value))
 return FALSE;
      break;

    case 'f':
    case 'F':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_function (dhandle, name, dtype, type == 'F', value))
 return FALSE;





      while (*p == ';')
 {
   ++p;
   if (parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0))
       == DEBUG_TYPE_NULL)
     return FALSE;
 }

      break;

    case 'G':
      {
 char leading;
 long c;
 asymbol **ps;



 dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
     (debug_type **) ((void*)0));
 if (dtype == DEBUG_TYPE_NULL)
   return FALSE;
 leading = bfd_get_symbol_leading_char (info->abfd);
 for (c = info->symcount, ps = info->syms; c > 0; --c, ++ps)
   {
     const char *n;

     n = bfd_asymbol_name (*ps);
     if (leading != '\0' && *n == leading)
       ++n;
     if (*n == *name && strcmp (n, name) == 0)
       break;
   }
 if (c > 0)
   value = bfd_asymbol_value (*ps);
 if (! stab_record_variable (dhandle, info, name, dtype, DEBUG_GLOBAL,
        value))
   return FALSE;
      }
      break;




    case 'l':
    case 's':
      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! stab_record_variable (dhandle, info, name, dtype, DEBUG_LOCAL,
      value))
 return FALSE;
      break;

    case 'p':

      if (*p != 'F')
 dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
     (debug_type **) ((void*)0));
      else
 {



   ++p;
   dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
       (debug_type **) ((void*)0));
   if (dtype != DEBUG_TYPE_NULL)
     {
       debug_type ftype;

       ftype = debug_make_function_type (dhandle, dtype,
      (debug_type *) ((void*)0), FALSE);
       dtype = debug_make_pointer_type (dhandle, ftype);
     }
 }
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_parameter (dhandle, name, dtype, DEBUG_PARM_STACK,
        value))
 return FALSE;





      break;

    case 'P':
      if (stabtype == N_FUN)
 {

   while (*p == ';')
     {
       ++p;
       if (parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
       (debug_type **) ((void*)0))
    == DEBUG_TYPE_NULL)
  return FALSE;
     }
   break;
 }

    case 'R':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_parameter (dhandle, name, dtype, DEBUG_PARM_REG,
        value))
 return FALSE;
      break;

    case 'r':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! stab_record_variable (dhandle, info, name, dtype, DEBUG_REGISTER,
      value))
 return FALSE;



      break;

    case 'S':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! stab_record_variable (dhandle, info, name, dtype, DEBUG_STATIC,
      value))
 return FALSE;
      break;

    case 't':

      dtype = parse_stab_type (dhandle, info, name, &p, &slot);
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (name == ((void*)0))
 {

   return TRUE;
 }

      dtype = debug_name_type (dhandle, name, dtype);
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;

      if (slot != ((void*)0))
 *slot = dtype;

      break;

    case 'T':


      if (*p != 't')
 {
   synonym = FALSE;


 }
      else
 {
   synonym = TRUE;
   ++p;
 }

      dtype = parse_stab_type (dhandle, info, name, &p, &slot);
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (name == ((void*)0))
 return TRUE;




      self_crossref = info->self_crossref;

      dtype = debug_tag_type (dhandle, name, dtype);
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (slot != ((void*)0))
 *slot = dtype;




      if (! self_crossref)
 {
   register struct stab_tag **pst;

   for (pst = &info->tags; *pst != ((void*)0); pst = &(*pst)->next)
     {
       if ((*pst)->name[0] == name[0]
    && strcmp ((*pst)->name, name) == 0)
  {
    (*pst)->slot = dtype;
    *pst = (*pst)->next;
    break;
  }
     }
 }

      if (synonym)
 {
   dtype = debug_name_type (dhandle, name, dtype);
   if (dtype == DEBUG_TYPE_NULL)
     return FALSE;

   if (slot != ((void*)0))
     *slot = dtype;
 }

      break;

    case 'V':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;

      if (! stab_record_variable (dhandle, info, name, dtype,
      DEBUG_LOCAL_STATIC, value))
 return FALSE;
      break;

    case 'v':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_parameter (dhandle, name, dtype, DEBUG_PARM_REFERENCE,
        value))
 return FALSE;
      break;

    case 'a':

      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! debug_record_parameter (dhandle, name, dtype, DEBUG_PARM_REF_REG,
        value))
 return FALSE;
      break;

    case 'X':




      dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), &p,
          (debug_type **) ((void*)0));
      if (dtype == DEBUG_TYPE_NULL)
 return FALSE;
      if (! stab_record_variable (dhandle, info, name, dtype, DEBUG_LOCAL,
      value))
 return FALSE;
      break;

    default:
      bad_stab (string);
      return FALSE;
    }




  return TRUE;
}
