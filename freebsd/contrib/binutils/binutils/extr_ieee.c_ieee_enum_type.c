
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_handle {struct ieee_defined_enum* enums; TYPE_2__* type_stack; } ;
struct ieee_defined_enum {char const* tag; unsigned int indx; char const** names; int* vals; scalar_t__ defined; struct ieee_defined_enum* next; } ;
struct ieee_buflist {int dummy; } ;
typedef int bfd_signed_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {unsigned int indx; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ieee_define_named_type (struct ieee_handle*,char const*,unsigned int,int ,scalar_t__,scalar_t__,struct ieee_buflist*) ;
 scalar_t__ ieee_push_type (struct ieee_handle*,unsigned int,int ,scalar_t__,scalar_t__) ;
 int ieee_write_id (struct ieee_handle*,char const*) ;
 int ieee_write_number (struct ieee_handle*,int) ;
 int memset (struct ieee_defined_enum*,int ,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_enum_type (void *p, const char *tag, const char **names,
  bfd_signed_vma *vals)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_defined_enum *e;
  bfd_boolean localp, simple;
  unsigned int indx;
  int i = 0;

  localp = FALSE;
  indx = (unsigned int) -1;
  for (e = info->enums; e != ((void*)0); e = e->next)
    {
      if (tag == ((void*)0))
 {
   if (e->tag != ((void*)0))
     continue;
 }
      else
 {
   if (e->tag == ((void*)0)
       || tag[0] != e->tag[0]
       || strcmp (tag, e->tag) != 0)
     continue;
 }

      if (! e->defined)
 {

   indx = e->indx;
   break;
 }

      if (names != ((void*)0) && e->names != ((void*)0))
 {
   for (i = 0; names[i] != ((void*)0) && e->names[i] != ((void*)0); i++)
     {
       if (names[i][0] != e->names[i][0]
    || vals[i] != e->vals[i]
    || strcmp (names[i], e->names[i]) != 0)
  break;
     }
 }

      if ((names == ((void*)0) && e->names == ((void*)0))
   || (names != ((void*)0)
       && e->names != ((void*)0)
       && names[i] == ((void*)0)
       && e->names[i] == ((void*)0)))
 {

   return ieee_push_type (info, e->indx, 0, TRUE, FALSE);
 }

      if (tag != ((void*)0))
 {


   localp = TRUE;
   break;
 }
    }





  simple = TRUE;
  if (names != ((void*)0))
    {
      for (i = 0; names[i] != ((void*)0); i++)
 {
   if (vals[i] != i)
     {
       simple = FALSE;
       break;
     }
 }
    }

  if (! ieee_define_named_type (info, tag, indx, 0, TRUE, localp,
    (struct ieee_buflist *) ((void*)0))
      || ! ieee_write_number (info, simple ? 'E' : 'N'))
    return FALSE;
  if (simple)
    {


      if (! ieee_write_number (info, 4))
 return FALSE;
    }
  if (names != ((void*)0))
    {
      for (i = 0; names[i] != ((void*)0); i++)
 {
   if (! ieee_write_id (info, names[i]))
     return FALSE;
   if (! simple)
     {
       if (! ieee_write_number (info, vals[i]))
  return FALSE;
     }
 }
    }

  if (! localp)
    {
      if (indx == (unsigned int) -1)
 {
   e = (struct ieee_defined_enum *) xmalloc (sizeof *e);
   memset (e, 0, sizeof *e);
   e->indx = info->type_stack->type.indx;
   e->tag = tag;

   e->next = info->enums;
   info->enums = e;
 }

      e->names = names;
      e->vals = vals;
      e->defined = TRUE;
    }

  return TRUE;
}
