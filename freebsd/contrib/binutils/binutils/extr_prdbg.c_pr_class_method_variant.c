
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pr_handle {TYPE_3__* stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_5__ {int method; TYPE_1__* next; } ;
struct TYPE_4__ {int method; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ append_type (struct pr_handle*,char const*) ;
 int assert (int ) ;
 scalar_t__ indent_type (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int pr_fix_visibility (struct pr_handle*,int) ;
 int print_vma (scalar_t__,char*,int ,int) ;
 int substitute_type (struct pr_handle*,int ) ;

__attribute__((used)) static bfd_boolean
pr_class_method_variant (void *p, const char *physname,
    enum debug_visibility visibility,
    bfd_boolean constp, bfd_boolean volatilep,
    bfd_vma voffset, bfd_boolean context)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *method_type;
  char *context_type;

  assert (info->stack != ((void*)0));
  assert (info->stack->next != ((void*)0));


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


  if (! substitute_type (info,
    (context
     ? info->stack->next->next->method
     : info->stack->next->method)))
    return FALSE;


  method_type = pop_type (info);
  if (method_type == ((void*)0))
    return FALSE;


  if (! context)
    context_type = ((void*)0);
  else
    {
      context_type = pop_type (info);
      if (context_type == ((void*)0))
 return FALSE;
    }



  if (! pr_fix_visibility (info, visibility))
    return FALSE;

  if (! append_type (info, method_type)
      || ! append_type (info, " /* ")
      || ! append_type (info, physname)
      || ! append_type (info, " "))
    return FALSE;
  if (context || voffset != 0)
    {
      char ab[20];

      if (context)
 {
   if (! append_type (info, "context ")
       || ! append_type (info, context_type)
       || ! append_type (info, " "))
     return FALSE;
 }
      print_vma (voffset, ab, TRUE, FALSE);
      if (! append_type (info, "voffset ")
   || ! append_type (info, ab))
 return FALSE;
    }

  return (append_type (info, " */;\n")
   && indent_type (info));
}
