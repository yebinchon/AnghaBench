
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pr_handle {TYPE_2__* stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_4__ {char* type; TYPE_1__* next; } ;
struct TYPE_3__ {char* type; } ;


 scalar_t__ CONST_STRNEQ (char*,char*) ;



 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int append_type (struct pr_handle*,char*) ;
 int assert (int) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 char* pop_type (struct pr_handle*) ;
 int prepend_type (struct pr_handle*,char const*) ;
 int print_vma (scalar_t__,char*,scalar_t__,scalar_t__) ;
 int push_type (struct pr_handle*,char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int substitute_type (struct pr_handle*,char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
pr_class_baseclass (void *p, bfd_vma bitpos, bfd_boolean virtual,
      enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  const char *prefix;
  char ab[20];
  char *s, *l, *n;

  assert (info->stack != ((void*)0) && info->stack->next != ((void*)0));

  if (! substitute_type (info, ""))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  if (CONST_STRNEQ (t, "class "))
    t += sizeof "class " - 1;



  if (! push_type (info, t))
    return FALSE;

  if (virtual)
    {
      if (! prepend_type (info, "virtual "))
 return FALSE;
    }

  switch (visibility)
    {
    case 128:
      prefix = "public ";
      break;
    case 129:
      prefix = "protected ";
      break;
    case 130:
      prefix = "private ";
      break;
    default:
      prefix = "/* unknown visibility */ ";
      break;
    }

  if (! prepend_type (info, prefix))
    return FALSE;

  if (bitpos != 0)
    {
      print_vma (bitpos, ab, TRUE, FALSE);
      if (! append_type (info, " /* bitpos ")
   || ! append_type (info, ab)
   || ! append_type (info, " */"))
 return FALSE;
    }





  s = strchr (info->stack->next->type, '{');
  assert (s != ((void*)0));
  --s;



  for (l = info->stack->next->type; l != s; l++)
    if (*l == ':')
      break;
  if (! prepend_type (info, l == s ? " : " : ", "))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  n = (char *) xmalloc (strlen (info->stack->type) + strlen (t) + 1);
  memcpy (n, info->stack->type, s - info->stack->type);
  strcpy (n + (s - info->stack->type), t);
  strcat (n, s);

  free (info->stack->type);
  info->stack->type = n;

  free (t);

  return TRUE;
}
