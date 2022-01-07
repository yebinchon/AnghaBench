
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ _l_zeroes; int _l_offset; } ;
struct TYPE_22__ {int _l_name; TYPE_1__ _l_l; } ;
struct internal_ldsym {scalar_t__ l_smclas; int l_smtype; scalar_t__ l_value; int l_scnum; TYPE_2__ _l; } ;
struct internal_ldhdr {int l_stoff; int l_nsyms; } ;
struct TYPE_23__ {char const* name; int flags; TYPE_7__* section; scalar_t__ value; TYPE_5__* the_bfd; } ;
struct TYPE_24__ {TYPE_3__ symbol; } ;
typedef TYPE_4__ coff_symbol_type ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
struct TYPE_25__ {int flags; } ;
typedef TYPE_5__ bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_27__ {int keep_contents; int * contents; } ;
struct TYPE_26__ {scalar_t__ vma; } ;


 int BSF_GLOBAL ;
 int BSF_NO_FLAGS ;
 int DYNAMIC ;
 int L_EXPORT ;
 size_t SYMNMLEN ;
 int TRUE ;
 scalar_t__ XMC_XO ;
 TYPE_7__* bfd_abs_section_ptr ;
 char* bfd_alloc (TYPE_5__*,scalar_t__) ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_symbols ;
 int * bfd_get_section_by_name (TYPE_5__*,char*) ;
 int bfd_set_error (int ) ;
 int bfd_xcoff_ldsymsz (TYPE_5__*) ;
 int bfd_xcoff_loader_symbol_offset (TYPE_5__*,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldhdr_in (TYPE_5__*,int *,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldsym_in (TYPE_5__*,int *,struct internal_ldsym*) ;
 TYPE_4__* bfd_zalloc (TYPE_5__*,int) ;
 TYPE_9__* coff_section_data (TYPE_5__*,int *) ;
 TYPE_7__* coff_section_from_bfd_index (TYPE_5__*,int ) ;
 int memcpy (char*,int ,size_t) ;
 int xcoff_get_section_contents (TYPE_5__*,int *) ;

long
_bfd_xcoff_canonicalize_dynamic_symtab (bfd *abfd, asymbol **psyms)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  const char *strings;
  bfd_byte *elsym, *elsymend;
  coff_symbol_type *symbuf;

  if ((abfd->flags & DYNAMIC) == 0)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return -1;
    }

  lsec = bfd_get_section_by_name (abfd, ".loader");
  if (lsec == ((void*)0))
    {
      bfd_set_error (bfd_error_no_symbols);
      return -1;
    }

  if (! xcoff_get_section_contents (abfd, lsec))
    return -1;
  contents = coff_section_data (abfd, lsec)->contents;

  coff_section_data (abfd, lsec)->keep_contents = TRUE;

  bfd_xcoff_swap_ldhdr_in (abfd, contents, &ldhdr);

  strings = (char *) contents + ldhdr.l_stoff;

  symbuf = bfd_zalloc (abfd, ldhdr.l_nsyms * sizeof (* symbuf));
  if (symbuf == ((void*)0))
    return -1;

  elsym = contents + bfd_xcoff_loader_symbol_offset(abfd, &ldhdr);

  elsymend = elsym + ldhdr.l_nsyms * bfd_xcoff_ldsymsz(abfd);
  for (; elsym < elsymend; elsym += bfd_xcoff_ldsymsz(abfd), symbuf++, psyms++)
    {
      struct internal_ldsym ldsym;

      bfd_xcoff_swap_ldsym_in (abfd, elsym, &ldsym);

      symbuf->symbol.the_bfd = abfd;

      if (ldsym._l._l_l._l_zeroes == 0)
 symbuf->symbol.name = strings + ldsym._l._l_l._l_offset;
      else
 {
   char *c;

   c = bfd_alloc (abfd, (bfd_size_type) SYMNMLEN + 1);
   if (c == ((void*)0))
     return -1;
   memcpy (c, ldsym._l._l_name, SYMNMLEN);
   c[SYMNMLEN] = '\0';
   symbuf->symbol.name = c;
 }

      if (ldsym.l_smclas == XMC_XO)
 symbuf->symbol.section = bfd_abs_section_ptr;
      else
 symbuf->symbol.section = coff_section_from_bfd_index (abfd,
             ldsym.l_scnum);
      symbuf->symbol.value = ldsym.l_value - symbuf->symbol.section->vma;

      symbuf->symbol.flags = BSF_NO_FLAGS;
      if ((ldsym.l_smtype & L_EXPORT) != 0)
 symbuf->symbol.flags |= BSF_GLOBAL;



      *psyms = (asymbol *) symbuf;
    }

  *psyms = ((void*)0);

  return ldhdr.l_nsyms;
}
