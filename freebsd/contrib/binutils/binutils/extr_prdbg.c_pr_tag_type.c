
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef int bfd_boolean ;







 int FALSE ;
 int TRUE ;
 int abort () ;
 int append_type (struct pr_handle*,char const*) ;
 int push_type (struct pr_handle*,char const*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
pr_tag_type (void *p, const char *name, unsigned int id,
      enum debug_type_kind kind)
{
  struct pr_handle *info = (struct pr_handle *) p;
  const char *t, *tag;
  char idbuf[20];

  switch (kind)
    {
    case 130:
      t = "struct ";
      break;
    case 129:
      t = "union ";
      break;
    case 131:
      t = "enum ";
      break;
    case 132:
      t = "class ";
      break;
    case 128:
      t = "union class ";
      break;
    default:
      abort ();
      return FALSE;
    }

  if (! push_type (info, t))
    return FALSE;
  if (name != ((void*)0))
    tag = name;
  else
    {
      sprintf (idbuf, "%%anon%u", id);
      tag = idbuf;
    }

  if (! append_type (info, tag))
    return FALSE;
  if (name != ((void*)0) && kind != 131)
    {
      sprintf (idbuf, " /* id %u */", id);
      if (! append_type (info, idbuf))
 return FALSE;
    }

  return TRUE;
}
