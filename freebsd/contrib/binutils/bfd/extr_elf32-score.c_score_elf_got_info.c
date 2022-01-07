
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct score_got_info {int dummy; } ;
typedef int bfd ;
typedef int asection ;
struct TYPE_3__ {struct score_got_info* got_info; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 int BFD_ASSERT (int ) ;
 int TRUE ;
 int * elf_section_data (int *) ;
 int * score_elf_got_section (int *,int ) ;
 TYPE_2__* score_elf_section_data (int *) ;

__attribute__((used)) static struct score_got_info *
score_elf_got_info (bfd *abfd, asection **sgotp)
{
  asection *sgot;
  struct score_got_info *g;

  sgot = score_elf_got_section (abfd, TRUE);
  BFD_ASSERT (sgot != ((void*)0));
  BFD_ASSERT (elf_section_data (sgot) != ((void*)0));
  g = score_elf_section_data (sgot)->u.got_info;
  BFD_ASSERT (g != ((void*)0));

  if (sgotp)
    *sgotp = sgot;
  return g;
}
