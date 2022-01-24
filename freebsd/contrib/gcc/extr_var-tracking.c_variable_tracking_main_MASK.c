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

/* Variables and functions */
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int n_basic_blocks ; 
 int n_edges ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

unsigned int
FUNC8 (void)
{
  if (n_basic_blocks > 500 && n_edges / n_basic_blocks >= 20)
    return 0;

  FUNC2 ();
  FUNC6 ();
  if (!frame_pointer_needed)
    {
      if (!FUNC7 ())
	{
	  FUNC4 ();
	  return 0;
	}
    }

  FUNC5 ();
  FUNC3 ();

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC0 ();
      FUNC1 (dump_file, dump_flags);
    }

  FUNC4 ();
  return 0;
}