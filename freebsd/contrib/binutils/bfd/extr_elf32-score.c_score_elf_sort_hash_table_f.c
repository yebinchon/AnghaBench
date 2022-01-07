
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int offset; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_10__ {int dynindx; TYPE_4__ got; TYPE_3__ root; } ;
struct score_elf_link_hash_entry {TYPE_5__ root; } ;
struct score_elf_hash_sort_data {scalar_t__ max_unref_got_dynindx; scalar_t__ min_got_dynindx; struct elf_link_hash_entry* low; int max_non_got_dynindx; } ;
struct elf_link_hash_entry {int dummy; } ;
typedef int bfd_boolean ;


 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
score_elf_sort_hash_table_f (struct score_elf_link_hash_entry *h, void *data)
{
  struct score_elf_hash_sort_data *hsd = data;

  if (h->root.root.type == bfd_link_hash_warning)
    h = (struct score_elf_link_hash_entry *) h->root.root.u.i.link;


  if (h->root.dynindx == -1)
    return TRUE;





  if (h->root.got.offset == 2)
    {
      if (hsd->max_unref_got_dynindx == hsd->min_got_dynindx)
 hsd->low = (struct elf_link_hash_entry *) h;
      h->root.dynindx = hsd->max_unref_got_dynindx++;
    }
  else if (h->root.got.offset != 1)
    h->root.dynindx = hsd->max_non_got_dynindx++;
  else
    {
      h->root.dynindx = --hsd->min_got_dynindx;
      hsd->low = (struct elf_link_hash_entry *) h;
    }

  return TRUE;
}
