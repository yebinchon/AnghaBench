
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct got_entry* glist; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_9__ {int dynindx; scalar_t__ dynstr_index; TYPE_3__ got; TYPE_1__ root; int needs_plt; int ref_regular_nonweak; int ref_regular; int ref_dynamic; int non_got_ref; scalar_t__ dynamic_adjusted; } ;
struct ppc_link_hash_entry {TYPE_4__ elf; int tls_mask; int is_func_descriptor; int is_func; struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {scalar_t__ sec; struct ppc_dyn_relocs* next; scalar_t__ count; scalar_t__ pc_count; } ;
struct TYPE_7__ {scalar_t__ refcount; } ;
struct got_entry {scalar_t__ addend; scalar_t__ owner; scalar_t__ tls_type; struct got_entry* next; TYPE_2__ got; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
struct TYPE_10__ {int dynstr; } ;


 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int _bfd_elf_strtab_delref (int ,scalar_t__) ;
 scalar_t__ bfd_link_hash_indirect ;
 TYPE_5__* elf_hash_table (struct bfd_link_info*) ;
 int move_plt_plist (struct ppc_link_hash_entry*,struct ppc_link_hash_entry*) ;

__attribute__((used)) static void
ppc64_elf_copy_indirect_symbol (struct bfd_link_info *info,
    struct elf_link_hash_entry *dir,
    struct elf_link_hash_entry *ind)
{
  struct ppc_link_hash_entry *edir, *eind;

  edir = (struct ppc_link_hash_entry *) dir;
  eind = (struct ppc_link_hash_entry *) ind;


  if (eind->dyn_relocs != ((void*)0))
    {
      if (edir->dyn_relocs != ((void*)0))
 {
   struct ppc_dyn_relocs **pp;
   struct ppc_dyn_relocs *p;



   for (pp = &eind->dyn_relocs; (p = *pp) != ((void*)0); )
     {
       struct ppc_dyn_relocs *q;

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

  edir->is_func |= eind->is_func;
  edir->is_func_descriptor |= eind->is_func_descriptor;
  edir->tls_mask |= eind->tls_mask;




  if (!(ELIMINATE_COPY_RELOCS
 && eind->elf.root.type != bfd_link_hash_indirect
 && edir->elf.dynamic_adjusted))
    edir->elf.non_got_ref |= eind->elf.non_got_ref;

  edir->elf.ref_dynamic |= eind->elf.ref_dynamic;
  edir->elf.ref_regular |= eind->elf.ref_regular;
  edir->elf.ref_regular_nonweak |= eind->elf.ref_regular_nonweak;
  edir->elf.needs_plt |= eind->elf.needs_plt;


  if (eind->elf.root.type != bfd_link_hash_indirect)
    return;



  if (eind->elf.got.glist != ((void*)0))
    {
      if (edir->elf.got.glist != ((void*)0))
 {
   struct got_entry **entp;
   struct got_entry *ent;

   for (entp = &eind->elf.got.glist; (ent = *entp) != ((void*)0); )
     {
       struct got_entry *dent;

       for (dent = edir->elf.got.glist; dent != ((void*)0); dent = dent->next)
  if (dent->addend == ent->addend
      && dent->owner == ent->owner
      && dent->tls_type == ent->tls_type)
    {
      dent->got.refcount += ent->got.refcount;
      *entp = ent->next;
      break;
    }
       if (dent == ((void*)0))
  entp = &ent->next;
     }
   *entp = edir->elf.got.glist;
 }

      edir->elf.got.glist = eind->elf.got.glist;
      eind->elf.got.glist = ((void*)0);
    }


  move_plt_plist (eind, edir);

  if (eind->elf.dynindx != -1)
    {
      if (edir->elf.dynindx != -1)
 _bfd_elf_strtab_delref (elf_hash_table (info)->dynstr,
    edir->elf.dynstr_index);
      edir->elf.dynindx = eind->elf.dynindx;
      edir->elf.dynstr_index = eind->elf.dynstr_index;
      eind->elf.dynindx = -1;
      eind->elf.dynstr_index = 0;
    }
}
