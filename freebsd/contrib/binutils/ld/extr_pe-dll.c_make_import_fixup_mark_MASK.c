#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfd_symbol {char* name; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  address; struct bfd_symbol** sym_ptr_ptr; } ;
typedef  TYPE_1__ arelent ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct bfd_symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfd_link_hash_entry**) ; 
 int /*<<< orphan*/  current_sec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  link_info ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 

__attribute__((used)) static char *
FUNC6 (arelent *rel)
{
  /* We convert reloc to symbol, for later reference.  */
  static int counter;
  static char *fixup_name = NULL;
  static size_t buffer_len = 0;

  struct bfd_symbol *sym = *rel->sym_ptr_ptr;

  bfd *abfd = FUNC0 (sym);
  struct bfd_link_hash_entry *bh;

  if (!fixup_name)
    {
      fixup_name = FUNC5 (384);
      buffer_len = 384;
    }

  if (FUNC4 (sym->name) + 25 > buffer_len)
  /* Assume 25 chars for "__fu" + counter + "_".  If counter is
     bigger than 20 digits long, we've got worse problems than
     overflowing this buffer...  */
    {
      FUNC2 (fixup_name);
      /* New buffer size is length of symbol, plus 25, but
	 then rounded up to the nearest multiple of 128.  */
      buffer_len = ((FUNC4 (sym->name) + 25) + 127) & ~127;
      fixup_name = FUNC5 (buffer_len);
    }

  FUNC3 (fixup_name, "__fu%d_%s", counter++, sym->name);

  bh = NULL;
  FUNC1 (&link_info, abfd, fixup_name, BSF_GLOBAL,
				current_sec, /* sym->section, */
				rel->address, NULL, TRUE, FALSE, &bh);

  return fixup_name;
}