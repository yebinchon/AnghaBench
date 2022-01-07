
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_syment {int n_numaux; } ;
struct bfd_link_info {TYPE_1__* callbacks; int hash; scalar_t__ pei386_auto_import; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef enum coff_symbol_classification { ____Placeholder_coff_symbol_classification } coff_symbol_classification ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int (* add_archive_element ) (struct bfd_link_info*,int *,char const*) ;} ;


 int COFF_SYMBOL_COMMON ;
 int COFF_SYMBOL_GLOBAL ;
 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int FALSE ;
 int SYMNMLEN ;
 int TRUE ;
 char* _bfd_coff_internal_syment_name (int *,struct internal_syment*,char*) ;
 int bfd_coff_classify_symbol (int *,struct internal_syment*) ;
 int bfd_coff_swap_sym_in (int *,int *,struct internal_syment*) ;
 int bfd_coff_symesz (int *) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char const*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ obj_coff_external_syms (int *) ;
 int obj_raw_syment_count (int *) ;
 int stub1 (struct bfd_link_info*,int *,char const*) ;

__attribute__((used)) static bfd_boolean
coff_link_check_ar_symbols (bfd *abfd,
       struct bfd_link_info *info,
       bfd_boolean *pneeded)
{
  bfd_size_type symesz;
  bfd_byte *esym;
  bfd_byte *esym_end;

  *pneeded = FALSE;

  symesz = bfd_coff_symesz (abfd);
  esym = (bfd_byte *) obj_coff_external_syms (abfd);
  esym_end = esym + obj_raw_syment_count (abfd) * symesz;
  while (esym < esym_end)
    {
      struct internal_syment sym;
      enum coff_symbol_classification classification;

      bfd_coff_swap_sym_in (abfd, esym, &sym);

      classification = bfd_coff_classify_symbol (abfd, &sym);
      if (classification == COFF_SYMBOL_GLOBAL
   || classification == COFF_SYMBOL_COMMON)
 {
   const char *name;
   char buf[SYMNMLEN + 1];
   struct bfd_link_hash_entry *h;



   name = _bfd_coff_internal_syment_name (abfd, &sym, buf);
   if (name == ((void*)0))
     return FALSE;
   h = bfd_link_hash_lookup (info->hash, name, FALSE, FALSE, TRUE);


   if (!h
       && info->pei386_auto_import
       && CONST_STRNEQ (name, "__imp_"))
     h = bfd_link_hash_lookup (info->hash, name + 6, FALSE, FALSE, TRUE);





   if (h != (struct bfd_link_hash_entry *) ((void*)0)
       && h->type == bfd_link_hash_undefined)
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
