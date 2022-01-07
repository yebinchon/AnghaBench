
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp {int name; struct interp* next; } ;


 struct interp* interp_list ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

struct interp *
interp_lookup (const char *name)
{
  struct interp *interp;

  if (name == ((void*)0) || strlen (name) == 0)
    return ((void*)0);

  for (interp = interp_list; interp != ((void*)0); interp = interp->next)
    {
      if (strcmp (interp->name, name) == 0)
 return interp;
    }

  return ((void*)0);
}
