#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ppc_elf_link_hash_table {int /*<<< orphan*/  glink; int /*<<< orphan*/  elf; } ;
struct plt_entry {int /*<<< orphan*/  glink_offset; TYPE_1__* sec; scalar_t__ addend; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; int /*<<< orphan*/  section; } ;
struct TYPE_9__ {TYPE_3__ def; } ;
struct TYPE_7__ {char const* string; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ u; TYPE_2__ root; } ;
struct elf_link_hash_entry {int ref_regular; int def_regular; int ref_regular_nonweak; int forced_local; scalar_t__ non_elf; TYPE_5__ root; } ;
struct bfd_link_info {scalar_t__ pie; scalar_t__ shared; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_new ; 
 char* FUNC0 (size_t) ; 
 struct elf_link_hash_entry* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 struct ppc_elf_link_hash_table* FUNC3 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct plt_entry *ent,
	      struct elf_link_hash_entry *h,
	      struct bfd_link_info *info)
{
  struct elf_link_hash_entry *sh;
  size_t len1, len2, len3;
  char *name;
  const char *stub;
  struct ppc_elf_link_hash_table *htab = FUNC3 (info);

  if (info->shared || info->pie)
    stub = ".plt_pic32.";
  else
    stub = ".plt_call32.";

  len1 = FUNC5 (h->root.root.string);
  len2 = FUNC5 (stub);
  len3 = 0;
  if (ent->sec)
    len3 = FUNC5 (ent->sec->name);
  name = FUNC0 (len1 + len2 + len3 + 9);
  if (name == NULL)
    return FALSE;
  FUNC4 (name, "%08x", (unsigned) ent->addend & 0xffffffff);
  if (ent->sec)
    FUNC2 (name + 8, ent->sec->name, len3);
  FUNC2 (name + 8 + len3, stub, len2);
  FUNC2 (name + 8 + len3 + len2, h->root.root.string, len1 + 1);
  sh = FUNC1 (&htab->elf, name, TRUE, FALSE, FALSE);
  if (sh == NULL)
    return FALSE;
  if (sh->root.type == bfd_link_hash_new)
    {
      sh->root.type = bfd_link_hash_defined;
      sh->root.u.def.section = htab->glink;
      sh->root.u.def.value = ent->glink_offset;
      sh->ref_regular = 1;
      sh->def_regular = 1;
      sh->ref_regular_nonweak = 1;
      sh->forced_local = 1;
      sh->non_elf = 0;
    }
  return TRUE;
}