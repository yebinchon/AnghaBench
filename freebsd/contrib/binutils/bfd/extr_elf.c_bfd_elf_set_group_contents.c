
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_17__ {int flags; size_t index; unsigned long target_index; unsigned char* contents; int size; struct TYPE_17__* output_section; } ;
typedef TYPE_4__ asection ;
struct TYPE_16__ {unsigned long sh_info; unsigned char* contents; } ;
struct TYPE_19__ {unsigned int this_idx; TYPE_3__ this_hdr; } ;
struct TYPE_15__ {unsigned long i; } ;
struct TYPE_18__ {TYPE_2__ udata; } ;
struct TYPE_14__ {unsigned long i; } ;
struct TYPE_13__ {TYPE_1__ udata; } ;


 scalar_t__ FALSE ;
 unsigned int GRP_COMDAT ;
 int H_PUT_32 (int *,unsigned int,unsigned char*) ;
 int SEC_GROUP ;
 int SEC_LINKER_CREATED ;
 int SEC_LINK_ONCE ;
 scalar_t__ TRUE ;
 int abort () ;
 unsigned char* bfd_alloc (int *,int) ;
 TYPE_10__* elf_group_id (TYPE_4__*) ;
 TYPE_4__* elf_next_in_group (TYPE_4__*) ;
 TYPE_6__* elf_section_data (TYPE_4__*) ;
 TYPE_5__** elf_section_syms (int *) ;

void
bfd_elf_set_group_contents (bfd *abfd, asection *sec, void *failedptrarg)
{
  bfd_boolean *failedptr = failedptrarg;
  unsigned long symindx;
  asection *elt, *first;
  unsigned char *loc;
  bfd_boolean gas;



  if (((sec->flags & (SEC_GROUP | SEC_LINKER_CREATED)) != SEC_GROUP)
      || *failedptr)
    return;

  symindx = 0;
  if (elf_group_id (sec) != ((void*)0))
    symindx = elf_group_id (sec)->udata.i;

  if (symindx == 0)
    {


      if (elf_section_syms (abfd) != ((void*)0))
 symindx = elf_section_syms (abfd)[sec->index]->udata.i;
      else
 symindx = sec->target_index;
    }
  elf_section_data (sec)->this_hdr.sh_info = symindx;


  gas = TRUE;
  if (sec->contents == ((void*)0))
    {
      gas = FALSE;
      sec->contents = bfd_alloc (abfd, sec->size);


      elf_section_data (sec)->this_hdr.contents = sec->contents;
      if (sec->contents == ((void*)0))
 {
   *failedptr = TRUE;
   return;
 }
    }

  loc = sec->contents + sec->size;




  first = elt = elf_next_in_group (sec);





  while (elt != ((void*)0))
    {
      asection *s;
      unsigned int idx;

      loc -= 4;
      s = elt;
      if (!gas)
 s = s->output_section;
      idx = 0;
      if (s != ((void*)0))
 idx = elf_section_data (s)->this_idx;
      H_PUT_32 (abfd, idx, loc);
      elt = elf_next_in_group (elt);
      if (elt == first)
 break;
    }

  if ((loc -= 4) != sec->contents)
    abort ();

  H_PUT_32 (abfd, sec->flags & SEC_LINK_ONCE ? GRP_COMDAT : 0, loc);
}
