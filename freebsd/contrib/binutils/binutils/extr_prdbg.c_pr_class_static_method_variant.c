
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pr_handle {TYPE_2__* stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_boolean ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {int * method; } ;


 int FALSE ;
 scalar_t__ append_type (struct pr_handle*,char const*) ;
 int assert (int ) ;
 scalar_t__ indent_type (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int pr_fix_visibility (struct pr_handle*,int) ;
 int prepend_type (struct pr_handle*,char*) ;
 int substitute_type (struct pr_handle*,int *) ;

__attribute__((used)) static bfd_boolean
pr_class_static_method_variant (void *p, const char *physname,
    enum debug_visibility visibility,
    bfd_boolean constp, bfd_boolean volatilep)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *method_type;

  assert (info->stack != ((void*)0));
  assert (info->stack->next != ((void*)0));
  assert (info->stack->next->method != ((void*)0));


  if (volatilep)
    {
      if (! append_type (info, " volatile"))
 return FALSE;
    }
  if (constp)
    {
      if (! append_type (info, " const"))
 return FALSE;
    }


  if (! prepend_type (info, "static "))
    return FALSE;


  if (! substitute_type (info, info->stack->next->method))
    return FALSE;


  method_type = pop_type (info);
  if (method_type == ((void*)0))
    return FALSE;



  if (! pr_fix_visibility (info, visibility))
    return FALSE;

  return (append_type (info, method_type)
   && append_type (info, " /* ")
   && append_type (info, physname)
   && append_type (info, " */;\n")
   && indent_type (info));
}
