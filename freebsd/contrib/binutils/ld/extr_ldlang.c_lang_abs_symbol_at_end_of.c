
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int section; scalar_t__ value; } ;
struct TYPE_8__ {TYPE_1__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_9__ {int size; } ;
typedef TYPE_3__ asection ;
struct TYPE_10__ {int hash; } ;


 scalar_t__ TO_ADDR (int ) ;
 int TRUE ;
 int _ (char*) ;
 int bfd_abs_section_ptr ;
 TYPE_3__* bfd_get_section_by_name (int ,char const*) ;
 scalar_t__ bfd_get_section_vma (int ,TYPE_3__*) ;
 scalar_t__ bfd_link_hash_defined ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char const*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 int einfo (int ) ;
 TYPE_4__ link_info ;
 int output_bfd ;

void
lang_abs_symbol_at_end_of (const char *secname, const char *name)
{
  struct bfd_link_hash_entry *h;

  h = bfd_link_hash_lookup (link_info.hash, name, TRUE, TRUE, TRUE);
  if (h == ((void*)0))
    einfo (_("%P%F: bfd_link_hash_lookup failed: %E\n"));

  if (h->type == bfd_link_hash_new
      || h->type == bfd_link_hash_undefined)
    {
      asection *sec;

      h->type = bfd_link_hash_defined;

      sec = bfd_get_section_by_name (output_bfd, secname);
      if (sec == ((void*)0))
 h->u.def.value = 0;
      else
 h->u.def.value = (bfd_get_section_vma (output_bfd, sec)
     + TO_ADDR (sec->size));

      h->u.def.section = bfd_abs_section_ptr;
    }
}
