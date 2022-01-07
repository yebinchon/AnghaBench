
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct score_got_info {long local_gotno; TYPE_1__* global_gotsym; } ;
struct elf_link_hash_entry {long dynindx; } ;
typedef long bfd_vma ;
typedef int bfd ;
struct TYPE_5__ {long size; } ;
typedef TYPE_2__ asection ;
struct TYPE_4__ {long dynindx; } ;


 int BFD_ASSERT (int) ;
 long SCORE_ELF_GOT_SIZE (int *) ;
 struct score_got_info* score_elf_got_info (int *,TYPE_2__**) ;

__attribute__((used)) static bfd_vma
score_elf_global_got_index (bfd *abfd, struct elf_link_hash_entry *h)
{
  bfd_vma index;
  asection *sgot;
  struct score_got_info *g;
  long global_got_dynindx = 0;

  g = score_elf_got_info (abfd, &sgot);
  if (g->global_gotsym != ((void*)0))
    global_got_dynindx = g->global_gotsym->dynindx;





  BFD_ASSERT (h->dynindx >= global_got_dynindx);
  index = ((h->dynindx - global_got_dynindx + g->local_gotno) * SCORE_ELF_GOT_SIZE (abfd));
  BFD_ASSERT (index < sgot->size);

  return index;
}
