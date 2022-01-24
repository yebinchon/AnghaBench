#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
struct ia64_unw_table_entry {TYPE_3__ info; TYPE_1__ end; TYPE_2__ start; } ;
struct ia64_unw_aux_info {int table_len; unsigned char* info; int info_addr; scalar_t__ seg_base; int /*<<< orphan*/  strtab_size; int /*<<< orphan*/  strtab; int /*<<< orphan*/  nsyms; int /*<<< orphan*/  symtab; struct ia64_unw_table_entry* table; } ;
typedef  int /*<<< orphan*/  stamp ;
typedef  int bfd_vma ;

/* Variables and functions */
 int FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  PREFIX_HEX ; 
 scalar_t__ FUNC1 (int) ; 
 int UNW_FLAG_MASK ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned char*,int) ; 
 int eh_addr_size ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__,char const**,int*) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 unsigned char* FUNC11 (unsigned char const*,int,int*) ; 

__attribute__((used)) static void
FUNC12 (struct ia64_unw_aux_info *aux)
{
  struct ia64_unw_table_entry *tp;
  int in_body;

  for (tp = aux->table; tp < aux->table + aux->table_len; ++tp)
    {
      bfd_vma stamp;
      bfd_vma offset;
      const unsigned char *dp;
      const unsigned char *head;
      const char *procname;

      FUNC6 (aux->symtab, aux->nsyms, aux->strtab,
			       aux->strtab_size, tp->start, &procname, &offset);

      FUNC8 ("\n<", stdout);

      if (procname)
	{
	  FUNC8 (procname, stdout);

	  if (offset)
	    FUNC10 ("+%lx", (unsigned long) offset);
	}

      FUNC8 (">: [", stdout);
      FUNC9 (tp->start.offset, PREFIX_HEX);
      FUNC7 ('-', stdout);
      FUNC9 (tp->end.offset, PREFIX_HEX);
      FUNC10 ("], info at +0x%lx\n",
	      (unsigned long) (tp->info.offset - aux->seg_base));

      head = aux->info + (FUNC0 (tp->info) - aux->info_addr);
      stamp = FUNC5 ((unsigned char *) head, sizeof (stamp));

      FUNC10 ("  v%u, flags=0x%lx (%s%s), len=%lu bytes\n",
	      (unsigned) FUNC4 (stamp),
	      (unsigned long) ((stamp & UNW_FLAG_MASK) >> 32),
	      FUNC1 (stamp) ? " ehandler" : "",
	      FUNC2 (stamp) ? " uhandler" : "",
	      (unsigned long) (eh_addr_size * FUNC3 (stamp)));

      if (FUNC4 (stamp) != 1)
	{
	  FUNC10 ("\tUnknown version.\n");
	  continue;
	}

      in_body = 0;
      for (dp = head + 8; dp < head + 8 + eh_addr_size * FUNC3 (stamp);)
	dp = FUNC11 (dp, in_body, & in_body);
    }
}