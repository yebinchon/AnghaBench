
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_link_hash_table {int elf; struct ppc_link_hash_entry* tls_get_addr_fd; struct ppc_link_hash_entry* tls_get_addr; } ;
struct ppc_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 int * _bfd_elf_tls_setup (int *,struct bfd_link_info*) ;
 scalar_t__ elf_link_hash_lookup (int *,char*,int ,int ,int ) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

asection *
ppc64_elf_tls_setup (bfd *obfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;

  htab = ppc_hash_table (info);
  htab->tls_get_addr = ((struct ppc_link_hash_entry *)
   elf_link_hash_lookup (&htab->elf, ".__tls_get_addr",
           FALSE, FALSE, TRUE));
  htab->tls_get_addr_fd = ((struct ppc_link_hash_entry *)
      elf_link_hash_lookup (&htab->elf, "__tls_get_addr",
       FALSE, FALSE, TRUE));
  return _bfd_elf_tls_setup (obfd, info);
}
