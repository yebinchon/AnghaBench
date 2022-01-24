#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  source_location ;
typedef  int /*<<< orphan*/  cpp_reader ;
typedef  int /*<<< orphan*/  cpp_hashnode ;
struct TYPE_4__ {scalar_t__ to_line; } ;
struct TYPE_3__ {int /*<<< orphan*/  src_line; int /*<<< orphan*/  outf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char flag_dump_macros ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_table ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ print ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (cpp_reader *pfile, source_location line, cpp_hashnode *node)
{
  FUNC4 (line);
  FUNC2 ("#define ", print.outf);

  /* 'D' is whole definition; 'N' is name only.  */
  if (flag_dump_macros == 'D')
    FUNC2 ((const char *) FUNC1 (pfile, node),
	   print.outf);
  else
    FUNC2 ((const char *) FUNC0 (node), print.outf);

  FUNC5 ('\n', print.outf);
  if (FUNC3 (&line_table, line)->to_line != 0)
    print.src_line++;
}