
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct internal_ldrel {int l_symndx; int l_vaddr; } ;
struct internal_ldhdr {int l_nreloc; } ;
typedef int bfd_byte ;
struct TYPE_20__ {int flags; } ;
typedef TYPE_1__ bfd ;
typedef int asymbol ;
struct TYPE_21__ {int ** symbol_ptr_ptr; } ;
typedef TYPE_2__ asection ;
struct TYPE_22__ {int howto; scalar_t__ addend; int address; int ** sym_ptr_ptr; } ;
typedef TYPE_3__ arelent ;
struct TYPE_23__ {int * contents; } ;


 int DYNAMIC ;
 int abort () ;
 TYPE_3__* bfd_alloc (TYPE_1__*,int) ;
 int bfd_error_bad_value ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_symbols ;
 TYPE_2__* bfd_get_section_by_name (TYPE_1__*,char const*) ;
 int bfd_set_error (int ) ;
 int bfd_xcoff_dynamic_reloc_howto (TYPE_1__*) ;
 int bfd_xcoff_ldrelsz (TYPE_1__*) ;
 int bfd_xcoff_loader_reloc_offset (TYPE_1__*,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldhdr_in (TYPE_1__*,int *,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldrel_in (TYPE_1__*,int *,struct internal_ldrel*) ;
 TYPE_6__* coff_section_data (TYPE_1__*,TYPE_2__*) ;
 int xcoff_get_section_contents (TYPE_1__*,TYPE_2__*) ;

long
_bfd_xcoff_canonicalize_dynamic_reloc (bfd *abfd,
           arelent **prelocs,
           asymbol **syms)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  arelent *relbuf;
  bfd_byte *elrel, *elrelend;

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

  bfd_xcoff_swap_ldhdr_in (abfd, contents, &ldhdr);

  relbuf = bfd_alloc (abfd, ldhdr.l_nreloc * sizeof (arelent));
  if (relbuf == ((void*)0))
    return -1;

  elrel = contents + bfd_xcoff_loader_reloc_offset(abfd, &ldhdr);

  elrelend = elrel + ldhdr.l_nreloc * bfd_xcoff_ldrelsz(abfd);
  for (; elrel < elrelend; elrel += bfd_xcoff_ldrelsz(abfd), relbuf++,
  prelocs++)
    {
      struct internal_ldrel ldrel;

      bfd_xcoff_swap_ldrel_in (abfd, elrel, &ldrel);

      if (ldrel.l_symndx >= 3)
 relbuf->sym_ptr_ptr = syms + (ldrel.l_symndx - 3);
      else
 {
   const char *name;
   asection *sec;

   switch (ldrel.l_symndx)
     {
     case 0:
       name = ".text";
       break;
     case 1:
       name = ".data";
       break;
     case 2:
       name = ".bss";
       break;
     default:
       abort ();
       break;
     }

   sec = bfd_get_section_by_name (abfd, name);
   if (sec == ((void*)0))
     {
       bfd_set_error (bfd_error_bad_value);
       return -1;
     }

   relbuf->sym_ptr_ptr = sec->symbol_ptr_ptr;
 }

      relbuf->address = ldrel.l_vaddr;
      relbuf->addend = 0;




      relbuf->howto = bfd_xcoff_dynamic_reloc_howto(abfd);



      *prelocs = relbuf;
    }

  *prelocs = ((void*)0);

  return ldhdr.l_nreloc;
}
