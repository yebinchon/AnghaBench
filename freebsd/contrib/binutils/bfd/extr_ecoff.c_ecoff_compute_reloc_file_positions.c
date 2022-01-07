
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd_size_type ;
struct TYPE_9__ {int flags; TYPE_2__* sections; scalar_t__ output_has_begun; } ;
typedef TYPE_1__ bfd ;
struct TYPE_10__ {int const reloc_count; int rel_filepos; struct TYPE_10__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_12__ {int external_reloc_size; int round; } ;
struct TYPE_11__ {int reloc_filepos; int sym_filepos; } ;


 int D_PAGED ;
 int EXEC_P ;
 scalar_t__ TRUE ;
 int abort () ;
 TYPE_7__* ecoff_backend (TYPE_1__*) ;
 int ecoff_compute_section_file_positions (TYPE_1__*) ;
 TYPE_3__* ecoff_data (TYPE_1__*) ;

__attribute__((used)) static bfd_size_type
ecoff_compute_reloc_file_positions (bfd *abfd)
{
  const bfd_size_type external_reloc_size =
    ecoff_backend (abfd)->external_reloc_size;
  file_ptr reloc_base;
  bfd_size_type reloc_size;
  asection *current;
  file_ptr sym_base;

  if (! abfd->output_has_begun)
    {
      if (! ecoff_compute_section_file_positions (abfd))
 abort ();
      abfd->output_has_begun = TRUE;
    }

  reloc_base = ecoff_data (abfd)->reloc_filepos;

  reloc_size = 0;
  for (current = abfd->sections;
       current != ((void*)0);
       current = current->next)
    {
      if (current->reloc_count == 0)
 current->rel_filepos = 0;
      else
 {
   bfd_size_type relsize;

   current->rel_filepos = reloc_base;
   relsize = current->reloc_count * external_reloc_size;
   reloc_size += relsize;
   reloc_base += relsize;
 }
    }

  sym_base = ecoff_data (abfd)->reloc_filepos + reloc_size;




  if ((abfd->flags & EXEC_P) != 0
      && (abfd->flags & D_PAGED) != 0)
    sym_base = ((sym_base + ecoff_backend (abfd)->round - 1)
  &~ (ecoff_backend (abfd)->round - 1));

  ecoff_data (abfd)->sym_filepos = sym_base;

  return reloc_size;
}
