
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {int indent; TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int visibility; } ;


 int DEBUG_VISIBILITY_PRIVATE ;
 int FALSE ;
 scalar_t__ append_type (struct pr_handle*,char const*) ;
 scalar_t__ indent_type (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int push_type (struct pr_handle*,char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
pr_start_class_type (void *p, const char *tag, unsigned int id,
       bfd_boolean structp, unsigned int size,
       bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *tv = ((void*)0);

  info->indent += 2;

  if (vptr && ! ownvptr)
    {
      tv = pop_type (info);
      if (tv == ((void*)0))
 return FALSE;
    }

  if (! push_type (info, structp ? "class " : "union class "))
    return FALSE;
  if (tag != ((void*)0))
    {
      if (! append_type (info, tag))
 return FALSE;
    }
  else
    {
      char idbuf[20];

      sprintf (idbuf, "%%anon%u", id);
      if (! append_type (info, idbuf))
 return FALSE;
    }

  if (! append_type (info, " {"))
    return FALSE;
  if (size != 0 || vptr || ownvptr || tag != ((void*)0))
    {
      if (! append_type (info, " /*"))
 return FALSE;

      if (size != 0)
 {
   char ab[20];

   sprintf (ab, "%u", size);
   if (! append_type (info, " size ")
       || ! append_type (info, ab))
     return FALSE;
 }

      if (vptr)
 {
   if (! append_type (info, " vtable "))
     return FALSE;
   if (ownvptr)
     {
       if (! append_type (info, "self "))
  return FALSE;
     }
   else
     {
       if (! append_type (info, tv)
    || ! append_type (info, " "))
  return FALSE;
     }
 }

      if (tag != ((void*)0))
 {
   char ab[30];

   sprintf (ab, " id %u", id);
   if (! append_type (info, ab))
     return FALSE;
 }

      if (! append_type (info, " */"))
 return FALSE;
    }

  info->stack->visibility = DEBUG_VISIBILITY_PRIVATE;

  return (append_type (info, "\n")
   && indent_type (info));
}
