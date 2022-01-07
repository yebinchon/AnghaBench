
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* section; } ;
struct TYPE_7__ {TYPE_2__ def; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; scalar_t__ forced_local; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {int * output_section; } ;


 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;

bfd_boolean
_bfd_elf_hash_symbol (struct elf_link_hash_entry *h)
{
  return !(h->forced_local
    || h->root.type == bfd_link_hash_undefined
    || h->root.type == bfd_link_hash_undefweak
    || ((h->root.type == bfd_link_hash_defined
  || h->root.type == bfd_link_hash_defweak)
        && h->root.u.def.section->output_section == ((void*)0)));
}
