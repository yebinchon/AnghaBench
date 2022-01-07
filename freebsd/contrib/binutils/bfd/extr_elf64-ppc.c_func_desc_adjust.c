
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int root; } ;
struct ppc_link_hash_table {TYPE_1__ elf; } ;
struct TYPE_12__ {scalar_t__ link; } ;
struct TYPE_13__ {int value; int section; } ;
struct TYPE_14__ {TYPE_2__ i; TYPE_3__ def; } ;
struct TYPE_17__ {char* string; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_4__ u; TYPE_7__ root; } ;
struct TYPE_15__ {struct plt_entry* plist; } ;
struct TYPE_19__ {int forced_local; int dynindx; int needs_plt; int def_regular; int other; int non_got_ref; int ref_regular_nonweak; int ref_dynamic; int ref_regular; TYPE_8__ root; scalar_t__ def_dynamic; TYPE_5__ plt; } ;
struct ppc_link_hash_entry {int is_func_descriptor; TYPE_9__ elf; struct ppc_link_hash_entry* oh; scalar_t__ fake; int is_func; scalar_t__ was_undefined; } ;
struct TYPE_16__ {scalar_t__ refcount; } ;
struct plt_entry {TYPE_6__ plt; struct plt_entry* next; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int FALSE ;
 scalar_t__ STV_DEFAULT ;
 int TRUE ;
 int _bfd_elf_link_hash_hide_symbol (struct bfd_link_info*,TYPE_9__*,int) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,TYPE_9__*) ;
 int bfd_link_add_undef (int *,TYPE_8__*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 struct ppc_link_hash_entry* get_fdh (struct ppc_link_hash_entry*,struct ppc_link_hash_table*) ;
 int * get_opd_info (int ) ;
 struct ppc_link_hash_entry* make_fdh (struct bfd_link_info*,struct ppc_link_hash_entry*) ;
 int move_plt_plist (struct ppc_link_hash_entry*,struct ppc_link_hash_entry*) ;
 scalar_t__ opd_entry_value (int ,int ,int *,int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
func_desc_adjust (struct elf_link_hash_entry *h, void *inf)
{
  struct bfd_link_info *info;
  struct ppc_link_hash_table *htab;
  struct plt_entry *ent;
  struct ppc_link_hash_entry *fh;
  struct ppc_link_hash_entry *fdh;
  bfd_boolean force_local;

  fh = (struct ppc_link_hash_entry *) h;
  if (fh->elf.root.type == bfd_link_hash_indirect)
    return TRUE;

  if (fh->elf.root.type == bfd_link_hash_warning)
    fh = (struct ppc_link_hash_entry *) fh->elf.root.u.i.link;

  info = inf;
  htab = ppc_hash_table (info);





  if (fh->elf.root.type == bfd_link_hash_undefweak
      && fh->was_undefined
      && (fh->oh->elf.root.type == bfd_link_hash_defined
   || fh->oh->elf.root.type == bfd_link_hash_defweak)
      && get_opd_info (fh->oh->elf.root.u.def.section) != ((void*)0)
      && opd_entry_value (fh->oh->elf.root.u.def.section,
     fh->oh->elf.root.u.def.value,
     &fh->elf.root.u.def.section,
     &fh->elf.root.u.def.value) != (bfd_vma) -1)
    {
      fh->elf.root.type = fh->oh->elf.root.type;
      fh->elf.forced_local = 1;
      fh->elf.def_regular = fh->oh->elf.def_regular;
      fh->elf.def_dynamic = fh->oh->elf.def_dynamic;
    }



  if (!fh->is_func)
    return TRUE;

  for (ent = fh->elf.plt.plist; ent != ((void*)0); ent = ent->next)
    if (ent->plt.refcount > 0)
      break;
  if (ent == ((void*)0)
      || fh->elf.root.root.string[0] != '.'
      || fh->elf.root.root.string[1] == '\0')
    return TRUE;




  fdh = get_fdh (fh, htab);
  if (fdh != ((void*)0))
    while (fdh->elf.root.type == bfd_link_hash_indirect
    || fdh->elf.root.type == bfd_link_hash_warning)
      fdh = (struct ppc_link_hash_entry *) fdh->elf.root.u.i.link;

  if (fdh == ((void*)0)
      && info->shared
      && (fh->elf.root.type == bfd_link_hash_undefined
   || fh->elf.root.type == bfd_link_hash_undefweak))
    {
      fdh = make_fdh (info, fh);
      if (fdh == ((void*)0))
 return FALSE;
    }







  if (fdh != ((void*)0)
      && fdh->fake
      && fdh->elf.root.type == bfd_link_hash_undefweak)
    {
      if (fh->elf.root.type == bfd_link_hash_undefined)
 {
   fdh->elf.root.type = bfd_link_hash_undefined;
   bfd_link_add_undef (&htab->elf.root, &fdh->elf.root);
 }
      else if (fh->elf.root.type == bfd_link_hash_defined
        || fh->elf.root.type == bfd_link_hash_defweak)
 {
   _bfd_elf_link_hash_hide_symbol (info, &fdh->elf, TRUE);
 }
    }

  if (fdh != ((void*)0)
      && !fdh->elf.forced_local
      && (info->shared
   || fdh->elf.def_dynamic
   || fdh->elf.ref_dynamic
   || (fdh->elf.root.type == bfd_link_hash_undefweak
       && ELF_ST_VISIBILITY (fdh->elf.other) == STV_DEFAULT)))
    {
      if (fdh->elf.dynindx == -1)
 if (! bfd_elf_link_record_dynamic_symbol (info, &fdh->elf))
   return FALSE;
      fdh->elf.ref_regular |= fh->elf.ref_regular;
      fdh->elf.ref_dynamic |= fh->elf.ref_dynamic;
      fdh->elf.ref_regular_nonweak |= fh->elf.ref_regular_nonweak;
      fdh->elf.non_got_ref |= fh->elf.non_got_ref;
      if (ELF_ST_VISIBILITY (fh->elf.other) == STV_DEFAULT)
 {
   move_plt_plist (fh, fdh);
   fdh->elf.needs_plt = 1;
 }
      fdh->is_func_descriptor = 1;
      fdh->oh = fh;
      fh->oh = fdh;
    }
  force_local = (!fh->elf.def_regular
   || fdh == ((void*)0)
   || !fdh->elf.def_regular
   || fdh->elf.forced_local);
  _bfd_elf_link_hash_hide_symbol (info, &fh->elf, force_local);

  return TRUE;
}
