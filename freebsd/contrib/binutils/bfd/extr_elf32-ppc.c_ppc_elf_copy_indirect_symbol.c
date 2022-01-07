
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {struct plt_entry* plist; } ;
struct TYPE_8__ {scalar_t__ refcount; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_11__ {int dynindx; scalar_t__ dynstr_index; TYPE_4__ plt; TYPE_2__ got; TYPE_1__ root; int needs_plt; int ref_regular_nonweak; int ref_regular; int ref_dynamic; int non_got_ref; scalar_t__ dynamic_adjusted; } ;
struct ppc_elf_link_hash_entry {TYPE_5__ elf; int has_sda_refs; int tls_mask; struct ppc_elf_dyn_relocs* dyn_relocs; } ;
struct ppc_elf_dyn_relocs {scalar_t__ sec; struct ppc_elf_dyn_relocs* next; scalar_t__ count; scalar_t__ pc_count; } ;
struct TYPE_9__ {scalar_t__ refcount; } ;
struct plt_entry {scalar_t__ sec; scalar_t__ addend; struct plt_entry* next; TYPE_3__ plt; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
struct TYPE_12__ {int dynstr; } ;


 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int _bfd_elf_strtab_delref (int ,scalar_t__) ;
 scalar_t__ bfd_link_hash_indirect ;
 TYPE_6__* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static void
ppc_elf_copy_indirect_symbol (struct bfd_link_info *info,
         struct elf_link_hash_entry *dir,
         struct elf_link_hash_entry *ind)
{
  struct ppc_elf_link_hash_entry *edir, *eind;

  edir = (struct ppc_elf_link_hash_entry *) dir;
  eind = (struct ppc_elf_link_hash_entry *) ind;

  if (eind->dyn_relocs != ((void*)0))
    {
      if (edir->dyn_relocs != ((void*)0))
 {
   struct ppc_elf_dyn_relocs **pp;
   struct ppc_elf_dyn_relocs *p;



   for (pp = &eind->dyn_relocs; (p = *pp) != ((void*)0); )
     {
       struct ppc_elf_dyn_relocs *q;

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

  edir->tls_mask |= eind->tls_mask;
  edir->has_sda_refs |= eind->has_sda_refs;




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



  edir->elf.got.refcount += eind->elf.got.refcount;
  eind->elf.got.refcount = 0;


  if (eind->elf.plt.plist != ((void*)0))
    {
      if (edir->elf.plt.plist != ((void*)0))
 {
   struct plt_entry **entp;
   struct plt_entry *ent;

   for (entp = &eind->elf.plt.plist; (ent = *entp) != ((void*)0); )
     {
       struct plt_entry *dent;

       for (dent = edir->elf.plt.plist; dent != ((void*)0); dent = dent->next)
  if (dent->sec == ent->sec && dent->addend == ent->addend)
    {
      dent->plt.refcount += ent->plt.refcount;
      *entp = ent->next;
      break;
    }
       if (dent == ((void*)0))
  entp = &ent->next;
     }
   *entp = edir->elf.plt.plist;
 }

      edir->elf.plt.plist = eind->elf.plt.plist;
      eind->elf.plt.plist = ((void*)0);
    }

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
