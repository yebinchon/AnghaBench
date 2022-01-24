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
 scalar_t__ ISTREAM_FILE ; 
 int /*<<< orphan*/ * cpp_pipe ; 
 int /*<<< orphan*/ * cpp_temp_file ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ istream_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (istream_type == ISTREAM_FILE)
    {
      if (cpp_pipe != NULL)
	FUNC0 (cpp_pipe);

      if (cpp_temp_file != NULL)
	{
	  int errno_save = errno;

	  FUNC3 (cpp_temp_file);
	  errno = errno_save;
	  FUNC1 (cpp_temp_file);
	}
    }
  else
    {
      if (cpp_pipe != NULL)
	FUNC2 (cpp_pipe);
    }

  /* Since this is also run via xatexit, safeguard.  */
  cpp_pipe = NULL;
  cpp_temp_file = NULL;
}