
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {void* self_crossref; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef scalar_t__ debug_type ;
typedef void* bfd_boolean ;


 int DEBUG_KIND_ENUM ;
 int DEBUG_KIND_STRUCT ;
 int DEBUG_KIND_UNION ;
 int DEBUG_KIND_VOID ;
 scalar_t__ DEBUG_TYPE_NULL ;
 void* FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 void* TRUE ;
 int _ (char*) ;
 int atoi (char const*) ;
 int bad_stab (char const*) ;
 int debug_get_type_kind (void*,scalar_t__) ;
 scalar_t__ debug_make_const_type (void*,scalar_t__) ;
 scalar_t__ debug_make_function_type (void*,scalar_t__,scalar_t__*,void*) ;
 scalar_t__ debug_make_method_type (void*,scalar_t__,scalar_t__,scalar_t__*,void*) ;
 scalar_t__ debug_make_offset_type (void*,scalar_t__,scalar_t__) ;
 scalar_t__ debug_make_pointer_type (void*,scalar_t__) ;
 scalar_t__ debug_make_reference_type (void*,scalar_t__) ;
 scalar_t__ debug_make_set_type (void*,scalar_t__,void*) ;
 scalar_t__ debug_make_void_type (void*) ;
 scalar_t__ debug_make_volatile_type (void*,scalar_t__) ;
 int debug_record_type_size (void*,scalar_t__,unsigned int) ;
 scalar_t__ parse_stab_array_type (void*,struct stab_handle*,char const**,void*) ;
 scalar_t__ parse_stab_enum_type (void*,char const**) ;
 scalar_t__ parse_stab_range_type (void*,struct stab_handle*,char const*,char const**,int*) ;
 scalar_t__ parse_stab_struct_type (void*,struct stab_handle*,char const*,char const**,int,int*) ;
 scalar_t__ parse_stab_sun_builtin_type (void*,char const**) ;
 scalar_t__ parse_stab_sun_floating_type (void*,char const**) ;
 int parse_stab_type_number (char const**,int*) ;
 scalar_t__* stab_find_slot (struct stab_handle*,int*) ;
 scalar_t__ stab_find_tagged_type (void*,struct stab_handle*,char const*,int,int) ;
 scalar_t__ stab_find_type (void*,struct stab_handle*,int*) ;
 int stab_record_type (void*,struct stab_handle*,int*,scalar_t__) ;
 char* strchr (char const*,char) ;
 int strncmp (char const*,char const*,int) ;
 int warn_stab (char const*,int ) ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (scalar_t__*,unsigned int) ;

__attribute__((used)) static debug_type
parse_stab_type (void *dhandle, struct stab_handle *info, const char *typename, const char **pp, debug_type **slotp)
{
  const char *orig;
  int typenums[2];
  int size;
  bfd_boolean stringp;
  int descriptor;
  debug_type dtype;

  if (slotp != ((void*)0))
    *slotp = ((void*)0);

  orig = *pp;

  size = -1;
  stringp = FALSE;

  info->self_crossref = FALSE;




  if (! ISDIGIT (**pp) && **pp != '(' && **pp != '-')
    {


      typenums[0] = typenums[1] = -1;
    }
  else
    {
      if (! parse_stab_type_number (pp, typenums))
 return DEBUG_TYPE_NULL;

      if (**pp != '=')


 return stab_find_type (dhandle, info, typenums);
      if (slotp != ((void*)0) && typenums[0] >= 0 && typenums[1] >= 0)
 *slotp = stab_find_slot (info, typenums);



      ++*pp;

      while (**pp == '@')
 {
   const char *p = *pp + 1;
   const char *attr;

   if (ISDIGIT (*p) || *p == '(' || *p == '-')

     break;


   attr = p;

   for (; *p != ';'; ++p)
     {
       if (*p == '\0')
  {
    bad_stab (orig);
    return DEBUG_TYPE_NULL;
  }
     }
   *pp = p + 1;

   switch (*attr)
     {
     case 's':
       size = atoi (attr + 1);
       size /= 8;
       if (size <= 0)
  size = -1;
       break;

     case 'S':
       stringp = TRUE;
       break;

     default:


       break;
     }
 }
    }

  descriptor = **pp;
  ++*pp;

  switch (descriptor)
    {
    case 'x':
      {
 enum debug_type_kind code;
 const char *q1, *q2, *p;


 switch (**pp)
   {
   case 's':
     code = DEBUG_KIND_STRUCT;
     break;
   case 'u':
     code = DEBUG_KIND_UNION;
     break;
   case 'e':
     code = DEBUG_KIND_ENUM;
     break;
   default:


     warn_stab (orig, _("unrecognized cross reference type"));
     code = DEBUG_KIND_STRUCT;
     break;
   }
 ++*pp;

 q1 = strchr (*pp, '<');
 p = strchr (*pp, ':');
 if (p == ((void*)0))
   {
     bad_stab (orig);
     return DEBUG_TYPE_NULL;
   }
 if (q1 != ((void*)0) && p > q1 && p[1] == ':')
   {
     int nest = 0;

     for (q2 = q1; *q2 != '\0'; ++q2)
       {
  if (*q2 == '<')
    ++nest;
  else if (*q2 == '>')
    --nest;
  else if (*q2 == ':' && nest == 0)
    break;
       }
     p = q2;
     if (*p != ':')
       {
  bad_stab (orig);
  return DEBUG_TYPE_NULL;
       }
   }





 if (typename != ((void*)0)
     && strncmp (typename, *pp, p - *pp) == 0
     && typename[p - *pp] == '\0')
   info->self_crossref = TRUE;

 dtype = stab_find_tagged_type (dhandle, info, *pp, p - *pp, code);

 *pp = p + 1;
      }
      break;

    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '(':
      {
 const char *hold;
 int xtypenums[2];


 (*pp)--;
 hold = *pp;


 if (! parse_stab_type_number (pp, xtypenums))
   return DEBUG_TYPE_NULL;

 if (typenums[0] == xtypenums[0] && typenums[1] == xtypenums[1])
   {


     dtype = debug_make_void_type (dhandle);
   }
 else
   {
     *pp = hold;




     dtype = parse_stab_type (dhandle, info, (const char *) ((void*)0),
         pp, (debug_type **) ((void*)0));
     if (dtype == DEBUG_TYPE_NULL)
       return DEBUG_TYPE_NULL;
   }

 if (typenums[0] != -1)
   {
     if (! stab_record_type (dhandle, info, typenums, dtype))
       return DEBUG_TYPE_NULL;
   }

 break;
      }

    case '*':
      dtype = debug_make_pointer_type (dhandle,
           parse_stab_type (dhandle, info,
       (const char *) ((void*)0),
       pp,
       (debug_type **) ((void*)0)));
      break;

    case '&':

      dtype = (debug_make_reference_type
        (dhandle,
  parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
     (debug_type **) ((void*)0))));
      break;

    case 'f':


      dtype = (debug_make_function_type
        (dhandle,
  parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
     (debug_type **) ((void*)0)),
  (debug_type *) ((void*)0), FALSE));
      break;

    case 'k':


      dtype = debug_make_const_type (dhandle,
         parse_stab_type (dhandle, info,
            (const char *) ((void*)0),
            pp,
            (debug_type **) ((void*)0)));
      break;

    case 'B':


      dtype = (debug_make_volatile_type
        (dhandle,
  parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
     (debug_type **) ((void*)0))));
      break;

    case '@':


      {
 debug_type domain;
 debug_type memtype;



 domain = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
      (debug_type **) ((void*)0));
 if (domain == DEBUG_TYPE_NULL)
   return DEBUG_TYPE_NULL;

 if (**pp != ',')
   {
     bad_stab (orig);
     return DEBUG_TYPE_NULL;
   }
 ++*pp;

 memtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
       (debug_type **) ((void*)0));
 if (memtype == DEBUG_TYPE_NULL)
   return DEBUG_TYPE_NULL;

 dtype = debug_make_offset_type (dhandle, domain, memtype);
      }
      break;

    case '#':

      if (**pp == '#')
 {
   debug_type return_type;

   ++*pp;
   return_type = parse_stab_type (dhandle, info, (const char *) ((void*)0),
      pp, (debug_type **) ((void*)0));
   if (return_type == DEBUG_TYPE_NULL)
     return DEBUG_TYPE_NULL;
   if (**pp != ';')
     {
       bad_stab (orig);
       return DEBUG_TYPE_NULL;
     }
   ++*pp;
   dtype = debug_make_method_type (dhandle, return_type,
       DEBUG_TYPE_NULL,
       (debug_type *) ((void*)0), FALSE);
 }
      else
 {
   debug_type domain;
   debug_type return_type;
   debug_type *args;
   unsigned int n;
   unsigned int alloc;
   bfd_boolean varargs;

   domain = parse_stab_type (dhandle, info, (const char *) ((void*)0),
        pp, (debug_type **) ((void*)0));
   if (domain == DEBUG_TYPE_NULL)
     return DEBUG_TYPE_NULL;

   if (**pp != ',')
     {
       bad_stab (orig);
       return DEBUG_TYPE_NULL;
     }
   ++*pp;

   return_type = parse_stab_type (dhandle, info, (const char *) ((void*)0),
      pp, (debug_type **) ((void*)0));
   if (return_type == DEBUG_TYPE_NULL)
     return DEBUG_TYPE_NULL;

   alloc = 10;
   args = (debug_type *) xmalloc (alloc * sizeof *args);
   n = 0;
   while (**pp != ';')
     {
       if (**pp != ',')
  {
    bad_stab (orig);
    return DEBUG_TYPE_NULL;
  }
       ++*pp;

       if (n + 1 >= alloc)
  {
    alloc += 10;
    args = ((debug_type *)
     xrealloc (args, alloc * sizeof *args));
  }

       args[n] = parse_stab_type (dhandle, info, (const char *) ((void*)0),
      pp, (debug_type **) ((void*)0));
       if (args[n] == DEBUG_TYPE_NULL)
  return DEBUG_TYPE_NULL;
       ++n;
     }
   ++*pp;




   if (n == 0
       || debug_get_type_kind (dhandle, args[n - 1]) != DEBUG_KIND_VOID)
     varargs = TRUE;
   else
     {
       --n;
       varargs = FALSE;
     }

   args[n] = DEBUG_TYPE_NULL;

   dtype = debug_make_method_type (dhandle, return_type, domain, args,
       varargs);
 }
      break;

    case 'r':

      dtype = parse_stab_range_type (dhandle, info, typename, pp, typenums);
      break;

    case 'b':


      dtype = parse_stab_sun_builtin_type (dhandle, pp);
      break;

    case 'R':

      dtype = parse_stab_sun_floating_type (dhandle, pp);
      break;

    case 'e':

      dtype = parse_stab_enum_type (dhandle, pp);
      break;

    case 's':
    case 'u':

      dtype = parse_stab_struct_type (dhandle, info, typename, pp,
          descriptor == 's', typenums);
      break;

    case 'a':

      if (**pp != 'r')
 {
   bad_stab (orig);
   return DEBUG_TYPE_NULL;
 }
      ++*pp;

      dtype = parse_stab_array_type (dhandle, info, pp, stringp);
      break;

    case 'S':
      dtype = debug_make_set_type (dhandle,
       parse_stab_type (dhandle, info,
          (const char *) ((void*)0),
          pp,
          (debug_type **) ((void*)0)),
       stringp);
      break;

    default:
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }

  if (dtype == DEBUG_TYPE_NULL)
    return DEBUG_TYPE_NULL;

  if (typenums[0] != -1)
    {
      if (! stab_record_type (dhandle, info, typenums, dtype))
 return DEBUG_TYPE_NULL;
    }

  if (size != -1)
    {
      if (! debug_record_type_size (dhandle, dtype, (unsigned int) size))
 return DEBUG_TYPE_NULL;
    }

  return dtype;
}
