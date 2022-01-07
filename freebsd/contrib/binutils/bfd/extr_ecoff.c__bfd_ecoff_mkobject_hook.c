
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct internal_filehdr {int f_symptr; } ;
struct internal_aouthdr {scalar_t__ magic; int fprmask; int * cprmask; int gprmask; int gp_value; scalar_t__ tsize; scalar_t__ text_start; } ;
struct TYPE_7__ {int gp_size; int fprmask; int * cprmask; int gprmask; int gp; scalar_t__ text_end; scalar_t__ text_start; int sym_filepos; } ;
typedef TYPE_1__ ecoff_data_type ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ bfd ;


 int D_PAGED ;
 scalar_t__ ECOFF_AOUT_ZMAGIC ;
 int _bfd_ecoff_mkobject (TYPE_2__*) ;
 TYPE_1__* ecoff_data (TYPE_2__*) ;

void *
_bfd_ecoff_mkobject_hook (bfd *abfd, void * filehdr, void * aouthdr)
{
  struct internal_filehdr *internal_f = (struct internal_filehdr *) filehdr;
  struct internal_aouthdr *internal_a = (struct internal_aouthdr *) aouthdr;
  ecoff_data_type *ecoff;

  if (! _bfd_ecoff_mkobject (abfd))
    return ((void*)0);

  ecoff = ecoff_data (abfd);
  ecoff->gp_size = 8;
  ecoff->sym_filepos = internal_f->f_symptr;

  if (internal_a != ((void*)0))
    {
      int i;

      ecoff->text_start = internal_a->text_start;
      ecoff->text_end = internal_a->text_start + internal_a->tsize;
      ecoff->gp = internal_a->gp_value;
      ecoff->gprmask = internal_a->gprmask;
      for (i = 0; i < 4; i++)
 ecoff->cprmask[i] = internal_a->cprmask[i];
      ecoff->fprmask = internal_a->fprmask;
      if (internal_a->magic == ECOFF_AOUT_ZMAGIC)
 abfd->flags |= D_PAGED;
      else
 abfd->flags &=~ D_PAGED;
    }







  return (void *) ecoff;
}
