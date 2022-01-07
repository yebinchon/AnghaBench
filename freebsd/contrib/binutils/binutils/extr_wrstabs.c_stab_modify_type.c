
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {long type_index; TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {long index; int definition; } ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int free (char*) ;
 int memset (long*,int ,size_t) ;
 int sprintf (char*,char*,long,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_defined_type (struct stab_write_handle*,long,unsigned int) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,unsigned int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;
 scalar_t__ xrealloc (long*,size_t) ;

__attribute__((used)) static bfd_boolean
stab_modify_type (struct stab_write_handle *info, int mod,
    unsigned int size, long **cache, size_t *cache_alloc)
{
  long targindex;
  long index;
  char *s, *buf;

  assert (info->type_stack != ((void*)0));
  targindex = info->type_stack->index;

  if (targindex <= 0
      || cache == ((void*)0))
    {
      bfd_boolean definition;




      definition = info->type_stack->definition;
      s = stab_pop_type (info);
      buf = (char *) xmalloc (strlen (s) + 2);
      sprintf (buf, "%c%s", mod, s);
      free (s);
      if (! stab_push_string (info, buf, 0, definition, size))
 return FALSE;
      free (buf);
    }
  else
    {
      if ((size_t) targindex >= *cache_alloc)
 {
   size_t alloc;

   alloc = *cache_alloc;
   if (alloc == 0)
     alloc = 10;
   while ((size_t) targindex >= alloc)
     alloc *= 2;
   *cache = (long *) xrealloc (*cache, alloc * sizeof (long));
   memset (*cache + *cache_alloc, 0,
    (alloc - *cache_alloc) * sizeof (long));
   *cache_alloc = alloc;
 }

      index = (*cache)[targindex];
      if (index != 0 && ! info->type_stack->definition)
 {






   free (stab_pop_type (info));
   if (! stab_push_defined_type (info, index, size))
     return FALSE;
 }
      else
 {
   index = info->type_index;
   ++info->type_index;

   s = stab_pop_type (info);
   buf = (char *) xmalloc (strlen (s) + 20);
   sprintf (buf, "%ld=%c%s", index, mod, s);
   free (s);

   (*cache)[targindex] = index;

   if (! stab_push_string (info, buf, index, TRUE, size))
     return FALSE;

   free (buf);
 }
    }

  return TRUE;
}
