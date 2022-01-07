
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_got_info {int dummy; } ;
struct score_got_entry {int gotidx; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int dynobj; } ;


 int MINUS_ONE ;
 int R_SCORE_GOT15 ;
 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;
 struct score_got_entry* score_elf_create_local_got_entry (int *,int *,struct score_got_info*,int *,int,int ,int *,int ) ;
 struct score_got_info* score_elf_got_info (int ,int **) ;
 int score_elf_high (int) ;

__attribute__((used)) static bfd_vma
score_elf_got16_entry (bfd *abfd, bfd *ibfd, struct bfd_link_info *info,
        bfd_vma value, bfd_boolean external)
{
  asection *sgot;
  struct score_got_info *g;
  struct score_got_entry *entry;

  if (!external)
    {




      value = score_elf_high (value) << 16;
    }

  g = score_elf_got_info (elf_hash_table (info)->dynobj, &sgot);

  entry = score_elf_create_local_got_entry (abfd, ibfd, g, sgot, value, 0, ((void*)0),
         R_SCORE_GOT15);
  if (entry)
    return entry->gotidx;
  else
    return MINUS_ONE;
}
