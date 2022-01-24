#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct score_got_info {unsigned long assigned_gotno; int /*<<< orphan*/ * global_gotsym; scalar_t__ next; } ;
struct score_elf_link_hash_table {int dummy; } ;
struct score_elf_hash_sort_data {unsigned long max_unref_got_dynindx; unsigned long min_got_dynindx; unsigned long max_non_got_dynindx; int /*<<< orphan*/ * low; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {unsigned long dynsymcount; int /*<<< orphan*/ * dynobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (struct bfd_link_info*) ; 
 struct score_got_info* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct score_elf_link_hash_table*,int /*<<< orphan*/ ,struct score_elf_hash_sort_data*) ; 
 int /*<<< orphan*/  score_elf_sort_hash_table_f ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct bfd_link_info *info,
			   unsigned long max_local)
{
  struct score_elf_hash_sort_data hsd;
  struct score_got_info *g;
  bfd *dynobj;

  dynobj = FUNC1 (info)->dynobj;

  g = FUNC2 (dynobj, NULL);

  hsd.low = NULL;
  hsd.max_unref_got_dynindx =
    hsd.min_got_dynindx = FUNC1 (info)->dynsymcount
    /* In the multi-got case, assigned_gotno of the master got_info
       indicate the number of entries that aren't referenced in the
       primary GOT, but that must have entries because there are
       dynamic relocations that reference it.  Since they aren't
       referenced, we move them to the end of the GOT, so that they
       don't prevent other entries that are referenced from getting
       too large offsets.  */
    - (g->next ? g->assigned_gotno : 0);
  hsd.max_non_got_dynindx = max_local;
  FUNC3 (((struct score_elf_link_hash_table *)
				 FUNC1 (info)),
			         score_elf_sort_hash_table_f,
			         &hsd);

  /* There should have been enough room in the symbol table to
     accommodate both the GOT and non-GOT symbols.  */
  FUNC0 (hsd.max_non_got_dynindx <= hsd.min_got_dynindx);
  FUNC0 ((unsigned long)hsd.max_unref_got_dynindx
	      <= FUNC1 (info)->dynsymcount);

  /* Now we know which dynamic symbol has the lowest dynamic symbol
     table index in the GOT.  */
  g->global_gotsym = hsd.low;

  return TRUE;
}