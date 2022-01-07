
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct xcoff_link_hash_entry {int flags; } ;
struct internal_syment {scalar_t__ n_sclass; scalar_t__ n_scnum; int n_numaux; } ;
struct bfd_link_info {TYPE_1__* callbacks; TYPE_8__* hash; int static_link; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_13__ {int flags; scalar_t__ xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_14__ {scalar_t__ creator; } ;
struct TYPE_12__ {int (* add_archive_element ) (struct bfd_link_info*,TYPE_2__*,char const*) ;} ;


 scalar_t__ C_EXT ;
 int DYNAMIC ;
 int FALSE ;
 scalar_t__ N_UNDEF ;
 int SYMNMLEN ;
 int TRUE ;
 int XCOFF_DEF_DYNAMIC ;
 char* _bfd_coff_internal_syment_name (TYPE_2__*,struct internal_syment*,char*) ;
 int bfd_coff_swap_sym_in (TYPE_2__*,void*,void*) ;
 int bfd_coff_symesz (TYPE_2__*) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (TYPE_8__*,char const*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ obj_coff_external_syms (TYPE_2__*) ;
 int obj_raw_syment_count (TYPE_2__*) ;
 int stub1 (struct bfd_link_info*,TYPE_2__*,char const*) ;
 int xcoff_link_check_dynamic_ar_symbols (TYPE_2__*,struct bfd_link_info*,int *) ;

__attribute__((used)) static bfd_boolean
xcoff_link_check_ar_symbols (bfd *abfd,
        struct bfd_link_info *info,
        bfd_boolean *pneeded)
{
  bfd_size_type symesz;
  bfd_byte *esym;
  bfd_byte *esym_end;

  *pneeded = FALSE;

  if ((abfd->flags & DYNAMIC) != 0
      && ! info->static_link
      && info->hash->creator == abfd->xvec)
    return xcoff_link_check_dynamic_ar_symbols (abfd, info, pneeded);

  symesz = bfd_coff_symesz (abfd);
  esym = (bfd_byte *) obj_coff_external_syms (abfd);
  esym_end = esym + obj_raw_syment_count (abfd) * symesz;
  while (esym < esym_end)
    {
      struct internal_syment sym;

      bfd_coff_swap_sym_in (abfd, (void *) esym, (void *) &sym);

      if (sym.n_sclass == C_EXT && sym.n_scnum != N_UNDEF)
 {
   const char *name;
   char buf[SYMNMLEN + 1];
   struct bfd_link_hash_entry *h;



   name = _bfd_coff_internal_syment_name (abfd, &sym, buf);

   if (name == ((void*)0))
     return FALSE;
   h = bfd_link_hash_lookup (info->hash, name, FALSE, FALSE, TRUE);






   if (h != ((void*)0)
       && h->type == bfd_link_hash_undefined
        && (info->hash->creator != abfd->xvec
    || (((struct xcoff_link_hash_entry *) h)->flags
        & XCOFF_DEF_DYNAMIC) == 0))
     {
       if (! (*info->callbacks->add_archive_element) (info, abfd, name))
  return FALSE;
       *pneeded = TRUE;
       return TRUE;
     }
 }

      esym += (sym.n_numaux + 1) * symesz;
    }


  return TRUE;
}
