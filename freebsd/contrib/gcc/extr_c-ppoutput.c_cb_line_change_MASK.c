#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct line_map {int dummy; } ;
typedef  int /*<<< orphan*/  source_location ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  src_loc; } ;
typedef  TYPE_1__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_5__ {int printed; int /*<<< orphan*/  outf; scalar_t__ source; scalar_t__ prev; } ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct line_map const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_table ; 
 struct line_map* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ print ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  traditional ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile, const cpp_token *token,
		int parsing_args)
{
  source_location src_loc = token->src_loc;

  if (token->type == CPP_EOF || parsing_args)
    return;

  FUNC3 (src_loc);
  print.prev = 0;
  print.source = 0;

  /* Supply enough spaces to put this token in its original column,
     one space per column greater than 2, since scan_translation_unit
     will provide a space if PREV_WHITE.  Don't bother trying to
     reconstruct tabs; we can't get it right in general, and nothing
     ought to care.  Some things do care; the fault lies with them.  */
  if (!FUNC0 (pfile, traditional))
    {
      const struct line_map *map = FUNC2 (&line_table, src_loc);
      int spaces = FUNC1 (map, src_loc) - 2;
      print.printed = 1;

      while (-- spaces >= 0)
	FUNC4 (' ', print.outf);
    }
}