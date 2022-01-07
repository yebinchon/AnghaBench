
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_link_local_dynamic_entry {long input_indx; long dynindx; int * input_bfd; struct elf_link_local_dynamic_entry* next; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {struct elf_link_local_dynamic_entry* dynlocal; } ;


 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;

long
_bfd_elf_link_lookup_local_dynindx (struct bfd_link_info *info,
        bfd *input_bfd,
        long input_indx)
{
  struct elf_link_local_dynamic_entry *e;

  for (e = elf_hash_table (info)->dynlocal; e ; e = e->next)
    if (e->input_bfd == input_bfd && e->input_indx == input_indx)
      return e->dynindx;
  return -1;
}
