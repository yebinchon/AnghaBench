
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spu_link_hash_table {scalar_t__ num_overlays; TYPE_2__* ovtab; } ;
struct elf_segment_map {scalar_t__ count; int * sections; struct elf_segment_map* next; } ;
struct elf_obj_tdata {unsigned int program_header_size; struct elf_segment_map* segment_map; TYPE_3__* phdr; } ;
struct elf_backend_data {TYPE_1__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_8__ {unsigned int ovl_index; } ;
struct TYPE_7__ {unsigned int p_offset; scalar_t__ p_type; int p_filesz; int p_memsz; unsigned int p_vaddr; int p_flags; } ;
struct TYPE_6__ {scalar_t__ size; int owner; int * contents; } ;
struct TYPE_5__ {unsigned int sizeof_phdr; } ;
typedef TYPE_3__ Elf_Internal_Phdr ;


 int PF_OVERLAY ;
 scalar_t__ PT_LOAD ;
 int TRUE ;
 int bfd_put_32 (int ,unsigned int,int *) ;
 struct elf_obj_tdata* elf_tdata (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 TYPE_4__* spu_elf_section_data (int ) ;
 struct spu_link_hash_table* spu_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static int
spu_elf_modify_program_headers (bfd *abfd, struct bfd_link_info *info)
{
  const struct elf_backend_data *bed;
  struct elf_obj_tdata *tdata;
  Elf_Internal_Phdr *phdr, *last;
  struct spu_link_hash_table *htab;
  unsigned int count;
  unsigned int i;

  if (info == ((void*)0))
    return TRUE;

  bed = get_elf_backend_data (abfd);
  tdata = elf_tdata (abfd);
  phdr = tdata->phdr;
  count = tdata->program_header_size / bed->s->sizeof_phdr;
  htab = spu_hash_table (info);
  if (htab->num_overlays != 0)
    {
      struct elf_segment_map *m;
      unsigned int o;

      for (i = 0, m = elf_tdata (abfd)->segment_map; m; ++i, m = m->next)
 if (m->count != 0
     && (o = spu_elf_section_data (m->sections[0])->ovl_index) != 0)
   {

     phdr[i].p_flags |= PF_OVERLAY;

     if (htab->ovtab != ((void*)0) && htab->ovtab->size != 0)
       {
  bfd_byte *p = htab->ovtab->contents;
  unsigned int off = (o - 1) * 16 + 8;


  bfd_put_32 (htab->ovtab->owner, phdr[i].p_offset, p + off);
       }
   }
    }





  last = ((void*)0);
  for (i = count; i-- != 0; )
    if (phdr[i].p_type == PT_LOAD)
      {
 unsigned adjust;

 adjust = -phdr[i].p_filesz & 15;
 if (adjust != 0
     && last != ((void*)0)
     && phdr[i].p_offset + phdr[i].p_filesz > last->p_offset - adjust)
   break;

 adjust = -phdr[i].p_memsz & 15;
 if (adjust != 0
     && last != ((void*)0)
     && phdr[i].p_filesz != 0
     && phdr[i].p_vaddr + phdr[i].p_memsz > last->p_vaddr - adjust
     && phdr[i].p_vaddr + phdr[i].p_memsz <= last->p_vaddr)
   break;

 if (phdr[i].p_filesz != 0)
   last = &phdr[i];
      }

  if (i == (unsigned int) -1)
    for (i = count; i-- != 0; )
      if (phdr[i].p_type == PT_LOAD)
 {
 unsigned adjust;

 adjust = -phdr[i].p_filesz & 15;
 phdr[i].p_filesz += adjust;

 adjust = -phdr[i].p_memsz & 15;
 phdr[i].p_memsz += adjust;
      }

  return TRUE;
}
