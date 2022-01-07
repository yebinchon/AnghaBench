
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_action {int copy; scalar_t__ remove; } ;
struct elfcopy {scalar_t__ strip; int flags; } ;


 int DISCARD_LOCAL ;
 int SEC_COPY ;
 int SEC_REMOVE ;
 scalar_t__ STRIP_ALL ;
 scalar_t__ STRIP_DEBUG ;
 scalar_t__ STRIP_DWO ;
 scalar_t__ STRIP_NONDEBUG ;
 scalar_t__ STRIP_NONDWO ;
 scalar_t__ STRIP_UNNEEDED ;
 int SYMOP_KEEP ;
 scalar_t__ is_debug_section (char const*) ;
 scalar_t__ is_dwo_section (char const*) ;
 struct sec_action* lookup_sec_act (struct elfcopy*,char const*,int ) ;
 int * lookup_symop_list (struct elfcopy*,int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

int
is_remove_section(struct elfcopy *ecp, const char *name)
{


 if (strcmp(name, ".shstrtab") == 0)
  return 0;
 if (strcmp(name, ".symtab") == 0 ||
     strcmp(name, ".strtab") == 0) {
  if (ecp->strip == STRIP_ALL && lookup_symop_list(
      ecp, ((void*)0), SYMOP_KEEP) == ((void*)0))
   return (1);
  else
   return (0);
 }

 if (ecp->strip == STRIP_DWO && is_dwo_section(name))
  return (1);
 if (ecp->strip == STRIP_NONDWO && !is_dwo_section(name))
  return (1);

 if (is_debug_section(name)) {
  if (ecp->strip == STRIP_ALL ||
      ecp->strip == STRIP_DEBUG ||
      ecp->strip == STRIP_UNNEEDED ||
      (ecp->flags & DISCARD_LOCAL))
   return (1);
  if (ecp->strip == STRIP_NONDEBUG)
   return (0);
 }

 if ((ecp->flags & SEC_REMOVE) || (ecp->flags & SEC_COPY)) {
  struct sec_action *sac;

  sac = lookup_sec_act(ecp, name, 0);
  if ((ecp->flags & SEC_REMOVE) && sac != ((void*)0) && sac->remove)
   return (1);
  if ((ecp->flags & SEC_COPY) && (sac == ((void*)0) || !sac->copy))
   return (1);
 }

 return (0);
}
