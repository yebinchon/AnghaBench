
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int append_type (struct pr_handle*,char*) ;
 int indent_type (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int pr_fix_visibility (struct pr_handle*,int) ;
 int print_vma (scalar_t__,char*,int ,int ) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_struct_field (void *p, const char *name, bfd_vma bitpos, bfd_vma bitsize,
   enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];
  char *t;

  if (! substitute_type (info, name))
    return FALSE;

  if (! append_type (info, "; /* "))
    return FALSE;

  if (bitsize != 0)
    {
      print_vma (bitsize, ab, TRUE, FALSE);
      if (! append_type (info, "bitsize ")
   || ! append_type (info, ab)
   || ! append_type (info, ", "))
 return FALSE;
    }

  print_vma (bitpos, ab, TRUE, FALSE);
  if (! append_type (info, "bitpos ")
      || ! append_type (info, ab)
      || ! append_type (info, " */\n")
      || ! indent_type (info))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  if (! pr_fix_visibility (info, visibility))
    return FALSE;

  return append_type (info, t);
}
