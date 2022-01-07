
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xcoff_link_hash_entry {int flags; } ;
struct TYPE_5__ {scalar_t__ _l_zeroes; int _l_offset; } ;
struct TYPE_6__ {int _l_name; TYPE_1__ _l_l; } ;
struct internal_ldsym {int l_smtype; TYPE_2__ _l; } ;
struct internal_ldhdr {int l_stoff; int l_nsyms; } ;
struct bfd_link_info {TYPE_3__* callbacks; int hash; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_8__ {int * contents; int keep_contents; } ;
struct TYPE_7__ {int (* add_archive_element ) (struct bfd_link_info*,int *,char const*) ;} ;


 int FALSE ;
 int L_EXPORT ;
 int SYMNMLEN ;
 int TRUE ;
 int XCOFF_DEF_DYNAMIC ;
 int * bfd_get_section_by_name (int *,char*) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char const*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 int bfd_xcoff_ldsymsz (int *) ;
 int bfd_xcoff_loader_symbol_offset (int *,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldhdr_in (int *,int *,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldsym_in (int *,int *,struct internal_ldsym*) ;
 TYPE_4__* coff_section_data (int *,int *) ;
 int free (int *) ;
 int memcpy (char*,int ,int) ;
 int stub1 (struct bfd_link_info*,int *,char const*) ;
 int xcoff_get_section_contents (int *,int *) ;

__attribute__((used)) static bfd_boolean
xcoff_link_check_dynamic_ar_symbols (bfd *abfd,
         struct bfd_link_info *info,
         bfd_boolean *pneeded)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  const char *strings;
  bfd_byte *elsym, *elsymend;

  *pneeded = FALSE;

  lsec = bfd_get_section_by_name (abfd, ".loader");
  if (lsec == ((void*)0))

    return TRUE;

  if (! xcoff_get_section_contents (abfd, lsec))
    return FALSE;
  contents = coff_section_data (abfd, lsec)->contents;

  bfd_xcoff_swap_ldhdr_in (abfd, contents, &ldhdr);

  strings = (char *) contents + ldhdr.l_stoff;

  elsym = contents + bfd_xcoff_loader_symbol_offset (abfd, &ldhdr);

  elsymend = elsym + ldhdr.l_nsyms * bfd_xcoff_ldsymsz (abfd);
  for (; elsym < elsymend; elsym += bfd_xcoff_ldsymsz (abfd))
    {
      struct internal_ldsym ldsym;
      char nambuf[SYMNMLEN + 1];
      const char *name;
      struct bfd_link_hash_entry *h;

      bfd_xcoff_swap_ldsym_in (abfd, elsym, &ldsym);


      if ((ldsym.l_smtype & L_EXPORT) == 0)
 continue;

      if (ldsym._l._l_l._l_zeroes == 0)
 name = strings + ldsym._l._l_l._l_offset;
      else
 {
   memcpy (nambuf, ldsym._l._l_name, SYMNMLEN);
   nambuf[SYMNMLEN] = '\0';
   name = nambuf;
 }

      h = bfd_link_hash_lookup (info->hash, name, FALSE, FALSE, TRUE);




      if (h != ((void*)0)
   && h->type == bfd_link_hash_undefined
   && (((struct xcoff_link_hash_entry *) h)->flags
       & XCOFF_DEF_DYNAMIC) == 0)
 {
   if (! (*info->callbacks->add_archive_element) (info, abfd, name))
     return FALSE;
   *pneeded = TRUE;
   return TRUE;
 }
    }


  if (contents != ((void*)0) && ! coff_section_data (abfd, lsec)->keep_contents)
    {
      free (coff_section_data (abfd, lsec)->contents);
      coff_section_data (abfd, lsec)->contents = ((void*)0);
    }

  return TRUE;
}
