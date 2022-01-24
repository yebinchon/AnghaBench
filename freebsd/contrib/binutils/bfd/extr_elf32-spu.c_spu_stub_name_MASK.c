#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* string; } ;
struct TYPE_8__ {TYPE_1__ root; } ;
struct elf_link_hash_entry {TYPE_2__ root; } ;
typedef  int bfd_size_type ;
struct TYPE_9__ {int id; } ;
typedef  TYPE_3__ asection ;
struct TYPE_10__ {scalar_t__ r_addend; int /*<<< orphan*/  r_info; } ;
typedef  TYPE_4__ Elf_Internal_Rela ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (const asection *sym_sec,
	       const struct elf_link_hash_entry *h,
	       const Elf_Internal_Rela *rel)
{
  char *stub_name;
  bfd_size_type len;

  if (h)
    {
      len = FUNC3 (h->root.root.string) + 1 + 8 + 1;
      stub_name = FUNC1 (len);
      if (stub_name == NULL)
	return stub_name;

      FUNC2 (stub_name, "%s+%x",
	       h->root.root.string,
	       (int) rel->r_addend & 0xffffffff);
      len -= 8;
    }
  else
    {
      len = 8 + 1 + 8 + 1 + 8 + 1;
      stub_name = FUNC1 (len);
      if (stub_name == NULL)
	return stub_name;

      FUNC2 (stub_name, "%x:%x+%x",
	       sym_sec->id & 0xffffffff,
	       (int) FUNC0 (rel->r_info) & 0xffffffff,
	       (int) rel->r_addend & 0xffffffff);
      len = FUNC3 (stub_name);
    }

  if (stub_name[len - 2] == '+'
      && stub_name[len - 1] == '0'
      && stub_name[len] == 0)
    stub_name[len - 2] = 0;

  return stub_name;
}