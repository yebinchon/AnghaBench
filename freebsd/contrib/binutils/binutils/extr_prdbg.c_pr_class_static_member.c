
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_boolean ;


 int FALSE ;
 int append_type (struct pr_handle*,char const*) ;
 int indent_type (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int pr_fix_visibility (struct pr_handle*,int) ;
 int prepend_type (struct pr_handle*,char*) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_class_static_member (void *p, const char *name, const char *physname,
   enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;

  if (! substitute_type (info, name))
    return FALSE;

  if (! prepend_type (info, "static ")
      || ! append_type (info, "; /* ")
      || ! append_type (info, physname)
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
