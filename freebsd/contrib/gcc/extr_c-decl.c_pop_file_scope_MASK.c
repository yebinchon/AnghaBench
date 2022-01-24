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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ current_scope ; 
 scalar_t__ file_scope ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pch_file ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5 (void)
{
  /* In case there were missing closebraces, get us back to the global
     binding level.  */
  while (current_scope != file_scope)
    FUNC4 ();

  /* __FUNCTION__ is defined at file scope ("").  This
     call may not be necessary as my tests indicate it
     still works without it.  */
  FUNC2 ();

  /* This is the point to write out a PCH if we're doing that.
     In that case we do not want to do anything else.  */
  if (pch_file)
    {
      FUNC0 ();
      return;
    }

  /* Pop off the file scope and close this translation unit.  */
  FUNC4 ();
  file_scope = 0;

  FUNC3 ();
  FUNC1 ();
}