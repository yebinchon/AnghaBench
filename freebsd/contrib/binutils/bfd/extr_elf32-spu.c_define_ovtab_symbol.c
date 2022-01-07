
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spu_link_hash_table {TYPE_1__* ovtab; int elf; } ;
struct TYPE_9__ {int string; } ;
struct TYPE_7__ {TYPE_1__* section; } ;
struct TYPE_8__ {TYPE_2__ def; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ root; TYPE_3__ u; } ;
struct elf_link_hash_entry {int def_regular; int ref_regular; int ref_regular_nonweak; TYPE_5__ root; scalar_t__ non_elf; int type; } ;
struct TYPE_6__ {int owner; } ;


 int FALSE ;
 int STT_OBJECT ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,int ) ;
 int bfd_error_bad_value ;
 scalar_t__ bfd_link_hash_defined ;
 int bfd_set_error (int ) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int *,char const*,int ,int ,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static struct elf_link_hash_entry *
define_ovtab_symbol (struct spu_link_hash_table *htab, const char *name)
{
  struct elf_link_hash_entry *h;

  h = elf_link_hash_lookup (&htab->elf, name, TRUE, FALSE, FALSE);
  if (h == ((void*)0))
    return ((void*)0);

  if (h->root.type != bfd_link_hash_defined
      || !h->def_regular)
    {
      h->root.type = bfd_link_hash_defined;
      h->root.u.def.section = htab->ovtab;
      h->type = STT_OBJECT;
      h->ref_regular = 1;
      h->def_regular = 1;
      h->ref_regular_nonweak = 1;
      h->non_elf = 0;
    }
  else
    {
      (*_bfd_error_handler) (_("%B is not allowed to define %s"),
        h->root.u.def.section->owner,
        h->root.root.string);
      bfd_set_error (bfd_error_bad_value);
      return ((void*)0);
    }

  return h;
}
