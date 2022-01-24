#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* string; } ;
struct TYPE_10__ {TYPE_1__ root; } ;
struct TYPE_11__ {TYPE_2__ root; } ;
struct ppc_link_hash_entry {TYPE_3__ elf; } ;
typedef  int bfd_size_type ;
struct TYPE_12__ {int id; } ;
typedef  TYPE_4__ asection ;
struct TYPE_13__ {int r_addend; int /*<<< orphan*/  r_info; } ;
typedef  TYPE_5__ Elf_Internal_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5 (const asection *input_section,
	       const asection *sym_sec,
	       const struct ppc_link_hash_entry *h,
	       const Elf_Internal_Rela *rel)
{
  char *stub_name;
  bfd_size_type len;

  /* rel->r_addend is actually 64 bit, but who uses more than +/- 2^31
     offsets from a sym as a branch target?  In fact, we could
     probably assume the addend is always zero.  */
  FUNC0 (((int) rel->r_addend & 0xffffffff) == rel->r_addend);

  if (h)
    {
      len = 8 + 1 + FUNC4 (h->elf.root.root.string) + 1 + 8 + 1;
      stub_name = FUNC2 (len);
      if (stub_name == NULL)
	return stub_name;

      FUNC3 (stub_name, "%08x.%s+%x",
	       input_section->id & 0xffffffff,
	       h->elf.root.root.string,
	       (int) rel->r_addend & 0xffffffff);
    }
  else
    {
      len = 8 + 1 + 8 + 1 + 8 + 1 + 8 + 1;
      stub_name = FUNC2 (len);
      if (stub_name == NULL)
	return stub_name;

      FUNC3 (stub_name, "%08x.%x:%x+%x",
	       input_section->id & 0xffffffff,
	       sym_sec->id & 0xffffffff,
	       (int) FUNC1 (rel->r_info) & 0xffffffff,
	       (int) rel->r_addend & 0xffffffff);
    }
  if (stub_name[len - 2] == '+' && stub_name[len - 1] == '0')
    stub_name[len - 2] = 0;
  return stub_name;
}