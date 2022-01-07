
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_type ;
typedef char const* bfd_signed_vma ;
typedef int bfd_boolean ;


 int DEBUG_TYPE_NULL ;
 int bad_stab (char const*) ;
 int debug_make_enum_type (void*,char const**,char const**) ;
 scalar_t__ parse_number (char const**,int *) ;
 char* savestring (char const*,int) ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (char const**,unsigned int) ;

__attribute__((used)) static debug_type
parse_stab_enum_type (void *dhandle, const char **pp)
{
  const char *orig;
  const char **names;
  bfd_signed_vma *values;
  unsigned int n;
  unsigned int alloc;

  orig = *pp;





  if (**pp == '-')
    {
      while (**pp != ':')
 ++*pp;
      ++*pp;
    }




  alloc = 10;
  names = (const char **) xmalloc (alloc * sizeof *names);
  values = (bfd_signed_vma *) xmalloc (alloc * sizeof *values);
  n = 0;
  while (**pp != '\0' && **pp != ';' && **pp != ',')
    {
      const char *p;
      char *name;
      bfd_signed_vma val;

      p = *pp;
      while (*p != ':')
 ++p;

      name = savestring (*pp, p - *pp);

      *pp = p + 1;
      val = (bfd_signed_vma) parse_number (pp, (bfd_boolean *) ((void*)0));
      if (**pp != ',')
 {
   bad_stab (orig);
   return DEBUG_TYPE_NULL;
 }
      ++*pp;

      if (n + 1 >= alloc)
 {
   alloc += 10;
   names = ((const char **)
     xrealloc (names, alloc * sizeof *names));
   values = ((bfd_signed_vma *)
      xrealloc (values, alloc * sizeof *values));
 }

      names[n] = name;
      values[n] = val;
      ++n;
    }

  names[n] = ((void*)0);
  values[n] = 0;

  if (**pp == ';')
    ++*pp;

  return debug_make_enum_type (dhandle, names, values);
}
