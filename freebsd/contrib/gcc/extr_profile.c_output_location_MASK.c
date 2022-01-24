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
typedef  scalar_t__ gcov_position_t ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GCOV_TAG_LINES ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC5 (char const *file_name, int line,
		 gcov_position_t *offset, basic_block bb)
{
  static char const *prev_file_name;
  static int prev_line;
  bool name_differs, line_differs;

  if (!file_name)
    {
      prev_file_name = NULL;
      prev_line = -1;
      return;
    }

  name_differs = !prev_file_name || FUNC4 (file_name, prev_file_name);
  line_differs = prev_line != line;

  if (name_differs || line_differs)
    {
      if (!*offset)
	{
	  *offset = FUNC2 (GCOV_TAG_LINES);
	  FUNC3 (FUNC0 (bb));
	  name_differs = line_differs=true;
	}

      /* If this is a new source file, then output the
	 file's name to the .bb file.  */
      if (name_differs)
	{
	  prev_file_name = file_name;
	  FUNC3 (0);
	  FUNC1 (prev_file_name);
	}
      if (line_differs)
	{
	  FUNC3 (line);
	  prev_line = line;
	}
     }
}