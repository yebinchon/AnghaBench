
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {int indent; TYPE_1__* stack; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {int visibility; } ;


 int DEBUG_VISIBILITY_PUBLIC ;
 scalar_t__ FALSE ;
 int append_type (struct pr_handle*,char const*) ;
 scalar_t__ indent_type (struct pr_handle*) ;
 int push_type (struct pr_handle*,char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
pr_start_struct_type (void *p, const char *tag, unsigned int id,
        bfd_boolean structp, unsigned int size)
{
  struct pr_handle *info = (struct pr_handle *) p;

  info->indent += 2;

  if (! push_type (info, structp ? "struct " : "union "))
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
  if (size != 0 || tag != ((void*)0))
    {
      char ab[30];

      if (! append_type (info, " /*"))
 return FALSE;

      if (size != 0)
 {
   sprintf (ab, " size %u", size);
   if (! append_type (info, ab))
     return FALSE;
 }
      if (tag != ((void*)0))
 {
   sprintf (ab, " id %u", id);
   if (! append_type (info, ab))
     return FALSE;
 }
      if (! append_type (info, " */"))
 return FALSE;
    }
  if (! append_type (info, "\n"))
    return FALSE;

  info->stack->visibility = DEBUG_VISIBILITY_PUBLIC;

  return indent_type (info);
}
