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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RT ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC7 (char *args, int from_tty)
{
  FILE *stream;
  struct cleanup *old_cleanups;
  char *file = args;

  if (file == NULL)
    {
      FUNC1 ("source command requires pathname of file to source.");
    }

  file = FUNC6 (file);
  old_cleanups = FUNC3 (xfree, file);

  stream = FUNC2 (file, FOPEN_RT);
  if (!stream)
    {
      if (from_tty)
	FUNC4 (file);
      else
	return;
    }

  FUNC5 (stream, file);

  FUNC0 (old_cleanups);
}