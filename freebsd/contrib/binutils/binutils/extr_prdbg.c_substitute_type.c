
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char const* type; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ append_type (struct pr_handle*,char const*) ;
 int assert (int ) ;
 int free (char*) ;
 int memcpy (char*,char const*,int) ;
 int prepend_type (struct pr_handle*,char*) ;
 int strcat (char*,char*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
substitute_type (struct pr_handle *info, const char *s)
{
  char *u;

  assert (info->stack != ((void*)0));

  u = strchr (info->stack->type, '|');
  if (u != ((void*)0))
    {
      char *n;

      n = (char *) xmalloc (strlen (info->stack->type) + strlen (s));

      memcpy (n, info->stack->type, u - info->stack->type);
      strcpy (n + (u - info->stack->type), s);
      strcat (n, u + 1);

      free (info->stack->type);
      info->stack->type = n;

      return TRUE;
    }

  if (strchr (s, '|') != ((void*)0)
      && (strchr (info->stack->type, '{') != ((void*)0)
   || strchr (info->stack->type, '(') != ((void*)0)))
    {
      if (! prepend_type (info, "(")
   || ! append_type (info, ")"))
 return FALSE;
    }

  if (*s == '\0')
    return TRUE;

  return (append_type (info, " ")
   && append_type (info, s));
}
