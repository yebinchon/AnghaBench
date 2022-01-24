#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int force_source_line ; 
 int /*<<< orphan*/  high_block_linenum ; 
 int /*<<< orphan*/  high_function_linenum ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char const* last_filename ; 
 int last_linenum ; 

__attribute__((used)) static bool
FUNC3 (rtx insn)
{
  const char *filename = FUNC1 (insn);
  int linenum = FUNC2 (insn);

  if (filename
      && (force_source_line
	  || filename != last_filename
	  || last_linenum != linenum))
    {
      force_source_line = false;
      last_filename = filename;
      last_linenum = linenum;
      high_block_linenum = FUNC0 (last_linenum, high_block_linenum);
      high_function_linenum = FUNC0 (last_linenum, high_function_linenum);
      return true;
    }
  return false;
}