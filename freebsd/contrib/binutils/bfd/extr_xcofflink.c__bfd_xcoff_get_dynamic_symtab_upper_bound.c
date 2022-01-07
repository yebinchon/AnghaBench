
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct internal_ldhdr {int l_nsyms; } ;
typedef int bfd_byte ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_9__ {int * contents; } ;


 int DYNAMIC ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_symbols ;
 int * bfd_get_section_by_name (TYPE_1__*,char*) ;
 int bfd_set_error (int ) ;
 int bfd_xcoff_swap_ldhdr_in (TYPE_1__*,void*,struct internal_ldhdr*) ;
 TYPE_3__* coff_section_data (TYPE_1__*,int *) ;
 int xcoff_get_section_contents (TYPE_1__*,int *) ;

long
_bfd_xcoff_get_dynamic_symtab_upper_bound (bfd *abfd)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;

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

  bfd_xcoff_swap_ldhdr_in (abfd, (void *) contents, &ldhdr);

  return (ldhdr.l_nsyms + 1) * sizeof (asymbol *);
}
