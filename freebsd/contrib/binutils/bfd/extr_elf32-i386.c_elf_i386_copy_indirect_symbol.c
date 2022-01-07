
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ refcount; } ;
struct elf_link_hash_entry {int pointer_equality_needed; int needs_plt; int ref_regular_nonweak; int ref_regular; int ref_dynamic; scalar_t__ dynamic_adjusted; TYPE_2__ root; TYPE_1__ got; } ;
struct elf_i386_link_hash_entry {int tls_type; struct elf_i386_dyn_relocs* dyn_relocs; } ;
struct elf_i386_dyn_relocs {scalar_t__ sec; struct elf_i386_dyn_relocs* next; scalar_t__ count; scalar_t__ pc_count; } ;
struct bfd_link_info {int dummy; } ;


 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int GOT_UNKNOWN ;
 int _bfd_elf_link_hash_copy_indirect (struct bfd_link_info*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_link_hash_indirect ;

__attribute__((used)) static void
elf_i386_copy_indirect_symbol (struct bfd_link_info *info,
          struct elf_link_hash_entry *dir,
          struct elf_link_hash_entry *ind)
{
  struct elf_i386_link_hash_entry *edir, *eind;

  edir = (struct elf_i386_link_hash_entry *) dir;
  eind = (struct elf_i386_link_hash_entry *) ind;

  if (eind->dyn_relocs != ((void*)0))
    {
      if (edir->dyn_relocs != ((void*)0))
 {
   struct elf_i386_dyn_relocs **pp;
   struct elf_i386_dyn_relocs *p;



   for (pp = &eind->dyn_relocs; (p = *pp) != ((void*)0); )
     {
       struct elf_i386_dyn_relocs *q;

       for (q = edir->dyn_relocs; q != ((void*)0); q = q->next)
  if (q->sec == p->sec)
    {
      q->pc_count += p->pc_count;
      q->count += p->count;
      *pp = p->next;
      break;
    }
       if (q == ((void*)0))
  pp = &p->next;
     }
   *pp = edir->dyn_relocs;
 }

      edir->dyn_relocs = eind->dyn_relocs;
      eind->dyn_relocs = ((void*)0);
    }

  if (ind->root.type == bfd_link_hash_indirect
      && dir->got.refcount <= 0)
    {
      edir->tls_type = eind->tls_type;
      eind->tls_type = GOT_UNKNOWN;
    }

  if (ELIMINATE_COPY_RELOCS
      && ind->root.type != bfd_link_hash_indirect
      && dir->dynamic_adjusted)
    {



      dir->ref_dynamic |= ind->ref_dynamic;
      dir->ref_regular |= ind->ref_regular;
      dir->ref_regular_nonweak |= ind->ref_regular_nonweak;
      dir->needs_plt |= ind->needs_plt;
      dir->pointer_equality_needed |= ind->pointer_equality_needed;
    }
  else
    _bfd_elf_link_hash_copy_indirect (info, dir, ind);
}
