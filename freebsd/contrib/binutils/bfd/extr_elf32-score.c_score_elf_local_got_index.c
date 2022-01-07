
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_got_info {int dummy; } ;
struct score_got_entry {int gotidx; } ;
struct score_elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int dynobj; } ;


 int MINUS_ONE ;
 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;
 struct score_got_entry* score_elf_create_local_got_entry (int *,int *,struct score_got_info*,int *,int ,unsigned long,struct score_elf_link_hash_entry*,int) ;
 struct score_got_info* score_elf_got_info (int ,int **) ;

__attribute__((used)) static bfd_vma
score_elf_local_got_index (bfd *abfd, bfd *ibfd, struct bfd_link_info *info,
     bfd_vma value, unsigned long r_symndx,
     struct score_elf_link_hash_entry *h, int r_type)
{
  asection *sgot;
  struct score_got_info *g;
  struct score_got_entry *entry;

  g = score_elf_got_info (elf_hash_table (info)->dynobj, &sgot);

  entry = score_elf_create_local_got_entry (abfd, ibfd, g, sgot, value,
          r_symndx, h, r_type);
  if (!entry)
    return MINUS_ONE;

  else
    return entry->gotidx;
}
