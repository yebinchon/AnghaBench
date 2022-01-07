
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_3__ {scalar_t__ size; int reloc_count; } ;
typedef TYPE_1__ asection ;


 int BFD_ASSERT (int ) ;
 int FALSE ;
 unsigned int SCORE_ELF_REL_SIZE (int *) ;
 TYPE_1__* score_elf_rel_dyn_section (int *,int ) ;

__attribute__((used)) static void
score_elf_allocate_dynamic_relocations (bfd *abfd, unsigned int n)
{
  asection *s;

  s = score_elf_rel_dyn_section (abfd, FALSE);
  BFD_ASSERT (s != ((void*)0));

  if (s->size == 0)
    {

      s->size += SCORE_ELF_REL_SIZE (abfd);
      ++s->reloc_count;
    }
  s->size += n * SCORE_ELF_REL_SIZE (abfd);
}
