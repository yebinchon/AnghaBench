
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_elf_link_hash_table {TYPE_1__* splt; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ contents; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int bfd_put_32 (int *,int ,scalar_t__) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 int * mips_vxworks_shared_plt0_entry ;

__attribute__((used)) static void
mips_vxworks_finish_shared_plt (bfd *output_bfd, struct bfd_link_info *info)
{
  unsigned int i;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);


  for (i = 0; i < ARRAY_SIZE (mips_vxworks_shared_plt0_entry); i++)
    bfd_put_32 (output_bfd, mips_vxworks_shared_plt0_entry[i],
  htab->splt->contents + i * 4);
}
