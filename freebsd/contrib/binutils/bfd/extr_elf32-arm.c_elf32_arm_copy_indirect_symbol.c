
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct elf_link_hash_entry {TYPE_2__ got; TYPE_1__ root; } ;
struct elf32_arm_relocs_copied {scalar_t__ section; struct elf32_arm_relocs_copied* next; scalar_t__ count; scalar_t__ pc_count; } ;
struct elf32_arm_link_hash_entry {int tls_type; scalar_t__ plt_thumb_refcount; struct elf32_arm_relocs_copied* relocs_copied; } ;
struct bfd_link_info {int dummy; } ;


 int GOT_UNKNOWN ;
 int _bfd_elf_link_hash_copy_indirect (struct bfd_link_info*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_link_hash_indirect ;

__attribute__((used)) static void
elf32_arm_copy_indirect_symbol (struct bfd_link_info *info,
    struct elf_link_hash_entry *dir,
    struct elf_link_hash_entry *ind)
{
  struct elf32_arm_link_hash_entry *edir, *eind;

  edir = (struct elf32_arm_link_hash_entry *) dir;
  eind = (struct elf32_arm_link_hash_entry *) ind;

  if (eind->relocs_copied != ((void*)0))
    {
      if (edir->relocs_copied != ((void*)0))
 {
   struct elf32_arm_relocs_copied **pp;
   struct elf32_arm_relocs_copied *p;



   for (pp = &eind->relocs_copied; (p = *pp) != ((void*)0); )
     {
       struct elf32_arm_relocs_copied *q;

       for (q = edir->relocs_copied; q != ((void*)0); q = q->next)
  if (q->section == p->section)
    {
      q->pc_count += p->pc_count;
      q->count += p->count;
      *pp = p->next;
      break;
    }
       if (q == ((void*)0))
  pp = &p->next;
     }
   *pp = edir->relocs_copied;
 }

      edir->relocs_copied = eind->relocs_copied;
      eind->relocs_copied = ((void*)0);
    }

  if (ind->root.type == bfd_link_hash_indirect)
    {

      edir->plt_thumb_refcount += eind->plt_thumb_refcount;
      eind->plt_thumb_refcount = 0;

      if (dir->got.refcount <= 0)
 {
   edir->tls_type = eind->tls_type;
   eind->tls_type = GOT_UNKNOWN;
 }
    }

  _bfd_elf_link_hash_copy_indirect (info, dir, ind);
}
