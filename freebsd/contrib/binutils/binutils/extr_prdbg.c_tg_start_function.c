
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {char* (* demangler ) (int ,char const*,int) ;int parameter; TYPE_1__* stack; int abfd; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* flavor; char* method; int parents; } ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int FALSE ;
 int TRUE ;
 int append_type (struct pr_handle*,char*) ;
 char* strchr (char const*,char) ;
 int strdup (char const*) ;
 char* strstr (char*,char*) ;
 char* stub1 (int ,char const*,int) ;
 int substitute_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
tg_start_function (void *p, const char *name, bfd_boolean global)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *dname;

  if (! global)
    info->stack->flavor = "static";
  else
    info->stack->flavor = ((void*)0);

  dname = ((void*)0);
  if (info->demangler)
    dname = info->demangler (info->abfd, name, DMGL_ANSI | DMGL_PARAMS);

  if (! substitute_type (info, dname ? dname : name))
    return FALSE;

  info->stack->method = ((void*)0);
  if (dname != ((void*)0))
    {
      char *sep;
      sep = strstr (dname, "::");
      if (sep)
 {
   info->stack->method = dname;
   *sep = 0;
   name = sep + 2;
 }
      else
 {
   info->stack->method = "";
   name = dname;
 }
      sep = strchr (name, '(');
      if (sep)
 *sep = 0;

    }

  info->stack->parents = strdup (name);

  if (! info->stack->method && ! append_type (info, "("))
    return FALSE;

  info->parameter = 1;

  return TRUE;
}
