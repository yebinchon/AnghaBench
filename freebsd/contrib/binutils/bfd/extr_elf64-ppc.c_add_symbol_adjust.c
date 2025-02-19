
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ppc_link_hash_table {int twiddled_syms; } ;
struct TYPE_8__ {char* string; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ root; TYPE_2__ u; } ;
struct TYPE_10__ {int ref_regular; unsigned int other; TYPE_4__ root; } ;
struct ppc_link_hash_entry {int was_undefined; TYPE_5__ elf; } ;
struct bfd_link_info {int relocatable; } ;
typedef int bfd_boolean ;


 int ELF_ST_VISIBILITY (unsigned int) ;
 int FALSE ;
 int TRUE ;
 int abort () ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 struct ppc_link_hash_entry* get_fdh (struct ppc_link_hash_entry*,struct ppc_link_hash_table*) ;
 struct ppc_link_hash_entry* make_fdh (struct bfd_link_info*,struct ppc_link_hash_entry*) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
add_symbol_adjust (struct ppc_link_hash_entry *eh, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;
  struct ppc_link_hash_entry *fdh;

  if (eh->elf.root.type == bfd_link_hash_indirect)
    return TRUE;

  if (eh->elf.root.type == bfd_link_hash_warning)
    eh = (struct ppc_link_hash_entry *) eh->elf.root.u.i.link;

  if (eh->elf.root.root.string[0] != '.')
    abort ();

  htab = ppc_hash_table (info);
  fdh = get_fdh (eh, htab);
  if (fdh == ((void*)0)
      && !info->relocatable
      && (eh->elf.root.type == bfd_link_hash_undefined
   || eh->elf.root.type == bfd_link_hash_undefweak)
      && eh->elf.ref_regular)
    {



      fdh = make_fdh (info, eh);
      if (fdh == ((void*)0))
 return FALSE;
      else
 fdh->elf.ref_regular = 1;
    }
  else if (fdh != ((void*)0))
    {
      unsigned entry_vis = ELF_ST_VISIBILITY (eh->elf.other) - 1;
      unsigned descr_vis = ELF_ST_VISIBILITY (fdh->elf.other) - 1;
      if (entry_vis < descr_vis)
 fdh->elf.other += entry_vis - descr_vis;
      else if (entry_vis > descr_vis)
 eh->elf.other += descr_vis - entry_vis;

      if ((fdh->elf.root.type == bfd_link_hash_defined
    || fdh->elf.root.type == bfd_link_hash_defweak)
   && eh->elf.root.type == bfd_link_hash_undefined)
 {
   eh->elf.root.type = bfd_link_hash_undefweak;
   eh->was_undefined = 1;
   htab->twiddled_syms = 1;
 }
    }

  return TRUE;
}
