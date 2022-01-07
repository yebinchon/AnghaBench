
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef int debug_field ;
typedef int bfd_boolean ;


 int DEBUG_FIELD_NULL ;
 int FALSE ;
 int TRUE ;
 int bad_stab (char const*) ;
 int parse_stab_cpp_abbrev (void*,struct stab_handle*,char const**,int *) ;
 int parse_stab_one_struct_field (void*,struct stab_handle*,char const**,char const*,int *,int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (int *,unsigned int) ;

__attribute__((used)) static bfd_boolean
parse_stab_struct_fields (void *dhandle, struct stab_handle *info,
     const char **pp, debug_field **retp,
     bfd_boolean *staticsp)
{
  const char *orig;
  const char *p;
  debug_field *fields;
  unsigned int c;
  unsigned int alloc;

  *retp = ((void*)0);
  *staticsp = FALSE;

  orig = *pp;

  c = 0;
  alloc = 10;
  fields = (debug_field *) xmalloc (alloc * sizeof *fields);
  while (**pp != ';')
    {


      p = *pp;


      if (c + 1 >= alloc)
 {
   alloc += 10;
   fields = ((debug_field *)
      xrealloc (fields, alloc * sizeof *fields));
 }
      if ((*p == '$' || *p == '.') && p[1] != '_')
 {
   ++*pp;
   if (! parse_stab_cpp_abbrev (dhandle, info, pp, fields + c))
     return FALSE;
   ++c;
   continue;
 }






      p = strchr (p, ':');
      if (p == ((void*)0))
 {
   bad_stab (orig);
   return FALSE;
 }

      if (p[1] == ':')
 break;

      if (! parse_stab_one_struct_field (dhandle, info, pp, p, fields + c,
      staticsp))
 return FALSE;

      ++c;
    }

  fields[c] = DEBUG_FIELD_NULL;

  *retp = fields;

  return TRUE;
}
