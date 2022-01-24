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
struct TYPE_3__ {scalar_t__ line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ expanded_location ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ GCOV_NOTE_MAGIC ; 
 int /*<<< orphan*/  GCOV_TAG_FUNCTION ; 
 scalar_t__ GCOV_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbg_file_name ; 
 int bbg_file_opened ; 
 int bbg_function_announced ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ current_function_funcdef_no ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ local_tick ; 
 scalar_t__ no_coverage ; 

int
FUNC12 (void)
{
  if (no_coverage)
    return 0;

  if (!bbg_function_announced)
    {
      expanded_location xloc
	= FUNC5 (FUNC1 (current_function_decl));
      unsigned long offset;

      if (!bbg_file_opened)
	{
	  if (!FUNC7 (bbg_file_name, -1))
	    FUNC4 ("cannot open %s", bbg_file_name);
	  else
	    {
	      FUNC11 (GCOV_NOTE_MAGIC);
	      FUNC11 (GCOV_VERSION);
	      FUNC11 (local_tick);
	    }
	  bbg_file_opened = 1;
	}

      /* Announce function */
      offset = FUNC10 (GCOV_TAG_FUNCTION);
      FUNC11 (current_function_funcdef_no + 1);
      FUNC11 (FUNC3 ());
      FUNC9 (FUNC2
			 (FUNC0 (current_function_decl)));
      FUNC9 (xloc.file);
      FUNC11 (xloc.line);
      FUNC8 (offset);

      bbg_function_announced = 1;
    }
  return !FUNC6 ();
}