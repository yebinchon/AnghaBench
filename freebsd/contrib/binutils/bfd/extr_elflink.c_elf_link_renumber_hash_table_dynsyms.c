
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ link; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int dynindx; scalar_t__ forced_local; TYPE_3__ root; } ;
typedef int bfd_boolean ;


 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
elf_link_renumber_hash_table_dynsyms (struct elf_link_hash_entry *h,
          void *data)
{
  size_t *count = data;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  if (h->forced_local)
    return TRUE;

  if (h->dynindx != -1)
    h->dynindx = ++(*count);

  return TRUE;
}
