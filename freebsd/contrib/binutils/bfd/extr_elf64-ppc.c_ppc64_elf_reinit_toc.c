
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_link_hash_table {int multi_toc_needed; scalar_t__ toc_curr; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;


 scalar_t__ TOC_BASE_OFF ;
 scalar_t__ elf_gp (int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

void
ppc64_elf_reinit_toc (bfd *output_bfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab = ppc_hash_table (info);

  htab->multi_toc_needed = htab->toc_curr != elf_gp (output_bfd);



  htab->toc_curr = TOC_BASE_OFF;
}
