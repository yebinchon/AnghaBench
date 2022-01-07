
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef TYPE_2__* sec_ptr ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_16__ {TYPE_1__** sym_ptr_ptr; } ;
typedef TYPE_3__ arelent ;
struct TYPE_18__ {TYPE_1__* symbol; } ;
struct TYPE_17__ {TYPE_1__* symbol; } ;
struct TYPE_15__ {int * output_section; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {TYPE_1__* symbol; } ;


 int BSF_KEEP ;
 TYPE_12__* bfd_abs_section_ptr ;
 long bfd_canonicalize_reloc (int *,TYPE_2__*,TYPE_3__**,int **) ;
 TYPE_9__* bfd_com_section_ptr ;
 scalar_t__ bfd_error_invalid_operation ;
 int bfd_fatal (int ) ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_2__*) ;
 TYPE_7__* bfd_und_section_ptr ;
 int free (TYPE_3__**) ;
 TYPE_3__** xmalloc (long) ;

__attribute__((used)) static void
mark_symbols_used_in_relocations (bfd *ibfd, sec_ptr isection, void *symbolsarg)
{
  asymbol **symbols = symbolsarg;
  long relsize;
  arelent **relpp;
  long relcount, i;


  if (isection->output_section == ((void*)0))
    return;

  relsize = bfd_get_reloc_upper_bound (ibfd, isection);
  if (relsize < 0)
    {

      if (relsize == -1 && bfd_get_error () == bfd_error_invalid_operation)
 return;
      bfd_fatal (bfd_get_filename (ibfd));
    }

  if (relsize == 0)
    return;

  relpp = xmalloc (relsize);
  relcount = bfd_canonicalize_reloc (ibfd, isection, relpp, symbols);
  if (relcount < 0)
    bfd_fatal (bfd_get_filename (ibfd));



  for (i = 0; i < relcount; i++)
    {
      if (*relpp[i]->sym_ptr_ptr != bfd_com_section_ptr->symbol
   && *relpp[i]->sym_ptr_ptr != bfd_abs_section_ptr->symbol
   && *relpp[i]->sym_ptr_ptr != bfd_und_section_ptr->symbol)
 (*relpp[i]->sym_ptr_ptr)->flags |= BSF_KEEP;
    }

  if (relpp != ((void*)0))
    free (relpp);
}
