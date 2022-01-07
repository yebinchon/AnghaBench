
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd ;
struct TYPE_9__ {int i; } ;
struct TYPE_10__ {int flags; int name; TYPE_2__ udata; TYPE_4__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_11__ {int index; int * owner; struct TYPE_11__* output_section; } ;
typedef TYPE_4__ asection ;
struct TYPE_8__ {int i; } ;
struct TYPE_12__ {TYPE_1__ udata; } ;


 int BSF_SECTION_SYM ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int ) ;
 int bfd_asymbol_name (TYPE_3__*) ;
 int bfd_error_no_symbols ;
 int bfd_set_error (int ) ;
 int elf_num_section_syms (int *) ;
 TYPE_5__** elf_section_syms (int *) ;
 int elf_symbol_flags (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,long,int ,int,int,int ) ;
 int stderr ;
 int stub1 (int ,int *,int ) ;

int
_bfd_elf_symbol_from_bfd_symbol (bfd *abfd, asymbol **asym_ptr_ptr)
{
  asymbol *asym_ptr = *asym_ptr_ptr;
  int idx;
  flagword flags = asym_ptr->flags;






  if (asym_ptr->udata.i == 0
      && (flags & BSF_SECTION_SYM)
      && asym_ptr->section)
    {
      asection *sec;
      int indx;

      sec = asym_ptr->section;
      if (sec->owner != abfd && sec->output_section != ((void*)0))
 sec = sec->output_section;
      if (sec->owner == abfd
   && (indx = sec->index) < elf_num_section_syms (abfd)
   && elf_section_syms (abfd)[indx] != ((void*)0))
 asym_ptr->udata.i = elf_section_syms (abfd)[indx]->udata.i;
    }

  idx = asym_ptr->udata.i;

  if (idx == 0)
    {


      (*_bfd_error_handler)
 (_("%B: symbol `%s' required but not present"),
  abfd, bfd_asymbol_name (asym_ptr));
      bfd_set_error (bfd_error_no_symbols);
      return -1;
    }
  return idx;
}
