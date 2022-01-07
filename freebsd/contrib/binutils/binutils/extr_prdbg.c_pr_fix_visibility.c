
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_boolean ;
struct TYPE_2__ {int visibility; char* type; } ;






 int FALSE ;
 int TRUE ;
 int abort () ;
 int append_type (struct pr_handle*,char const*) ;
 int assert (int) ;
 int indent_type (struct pr_handle*) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static bfd_boolean
pr_fix_visibility (struct pr_handle *info, enum debug_visibility visibility)
{
  const char *s = ((void*)0);
  char *t;
  unsigned int len;

  assert (info->stack != ((void*)0));

  if (info->stack->visibility == visibility)
    return TRUE;

  switch (visibility)
    {
    case 128:
      s = "public";
      break;
    case 130:
      s = "private";
      break;
    case 129:
      s = "protected";
      break;
    case 131:
      s = "/* ignore */";
      break;
    default:
      abort ();
      return FALSE;
    }




  t = info->stack->type;
  len = strlen (t);
  assert (t[len - 1] == ' ');
  t[len - 1] = '\0';

  if (! append_type (info, s)
      || ! append_type (info, ":\n")
      || ! indent_type (info))
    return FALSE;

  info->stack->visibility = visibility;

  return TRUE;
}
