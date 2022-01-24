#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int probability; double count; int flags; TYPE_2__* src; TYPE_2__* dest; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const* const*) ; 
 TYPE_2__* ENTRY_BLOCK_PTR ; 
 TYPE_2__* EXIT_BLOCK_PTR ; 
 char* HOST_WIDEST_INT_PRINT_DEC ; 
 double REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ *) ; 

void
FUNC4 (FILE *file, edge e, int do_succ)
{
  basic_block side = (do_succ ? e->dest : e->src);

  if (side == ENTRY_BLOCK_PTR)
    FUNC3 (" ENTRY", file);
  else if (side == EXIT_BLOCK_PTR)
    FUNC3 (" EXIT", file);
  else
    FUNC1 (file, " %d", side->index);

  if (e->probability)
    FUNC1 (file, " [%.1f%%] ", e->probability * 100.0 / REG_BR_PROB_BASE);

  if (e->count)
    {
      FUNC1 (file, " count:");
      FUNC1 (file, HOST_WIDEST_INT_PRINT_DEC, e->count);
    }

  if (e->flags)
    {
      static const char * const bitnames[] = {
	"fallthru", "ab", "abcall", "eh", "fake", "dfs_back",
	"can_fallthru", "irreducible", "sibcall", "loop_exit",
	"true", "false", "exec"
      };
      int comma = 0;
      int i, flags = e->flags;

      FUNC3 (" (", file);
      for (i = 0; flags; i++)
	if (flags & (1 << i))
	  {
	    flags &= ~(1 << i);

	    if (comma)
	      FUNC2 (',', file);
	    if (i < (int) FUNC0 (bitnames))
	      FUNC3 (bitnames[i], file);
	    else
	      FUNC1 (file, "%d", i);
	    comma = 1;
	  }

      FUNC2 (')', file);
    }
}