
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct elfcopy {scalar_t__* secndx; scalar_t__ strip; int flags; int * v_rel; int * v_grp; } ;
struct TYPE_6__ {size_t member_5; size_t st_shndx; int st_info; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ BIT_ISSET (int *,int) ;
 int DISCARD_LLABEL ;
 int DISCARD_LOCAL ;
 size_t SHN_LORESERVE ;
 size_t SHN_UNDEF ;
 scalar_t__ STRIP_ALL ;
 scalar_t__ STRIP_DEBUG ;
 scalar_t__ STRIP_UNNEEDED ;
 int SYMOP_KEEP ;
 int SYMOP_STRIP ;
 scalar_t__ is_debug_symbol (int ) ;
 scalar_t__ is_local_label (char const*) ;
 scalar_t__ is_local_symbol (int ) ;
 scalar_t__ is_needed_symbol (struct elfcopy*,int,TYPE_1__*) ;
 int * lookup_symop_list (struct elfcopy*,char const*,int ) ;
 int mark_reloc_symbols (struct elfcopy*,size_t) ;
 int mark_section_group_symbols (struct elfcopy*,size_t) ;
 int memcmp (TYPE_1__*,TYPE_1__*,int) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
is_remove_symbol(struct elfcopy *ecp, size_t sc, int i, GElf_Sym *s,
    const char *name)
{
 GElf_Sym sym0 = {
  0,
  0,
  0,
  0,
  0,
  SHN_UNDEF,
 };





 if (i == 0 && !memcmp(s, &sym0, sizeof(GElf_Sym)))
  return (0);


 if (s->st_shndx != SHN_UNDEF && s->st_shndx < SHN_LORESERVE &&
     ecp->secndx[s->st_shndx] == 0)
  return (1);


 if (lookup_symop_list(ecp, name, SYMOP_KEEP) != ((void*)0))
  return (0);

 if (ecp->strip == STRIP_ALL)
  return (1);


 if (ecp->v_rel == ((void*)0))
  mark_reloc_symbols(ecp, sc);


 if (ecp->v_grp == ((void*)0))
  mark_section_group_symbols(ecp, sc);





 if (lookup_symop_list(ecp, name, SYMOP_STRIP) != ((void*)0)) {
  if (BIT_ISSET(ecp->v_rel, i)) {
   warnx("not stripping symbol `%s' because it is named"
       " in a relocation", name);
   return (0);
  }
  return (1);
 }

 if (is_needed_symbol(ecp, i, s))
  return (0);

 if (ecp->strip == STRIP_UNNEEDED)
  return (1);

 if ((ecp->flags & DISCARD_LOCAL) && is_local_symbol(s->st_info) &&
     !is_debug_symbol(s->st_info))
  return (1);

 if ((ecp->flags & DISCARD_LLABEL) && is_local_symbol(s->st_info) &&
     !is_debug_symbol(s->st_info) && is_local_label(name))
  return (1);

 if (ecp->strip == STRIP_DEBUG && is_debug_symbol(s->st_info))
  return (1);

 return (0);
}
