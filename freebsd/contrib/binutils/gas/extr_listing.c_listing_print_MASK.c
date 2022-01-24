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
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FOPEN_WT ; 
 int LISTING_LISTING ; 
 int LISTING_NOFORM ; 
 int LISTING_SYMBOLS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * last_open_file ; 
 int /*<<< orphan*/ * list_file ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int listing ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ paper_height ; 
 int /*<<< orphan*/ * stdout ; 
 char* subtitle ; 
 char* title ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (char *name)
{
  int using_stdout;

  title = "";
  subtitle = "";

  if (name == NULL)
    {
      list_file = stdout;
      using_stdout = 1;
    }
  else
    {
      list_file = FUNC3 (name, FOPEN_WT);
      if (list_file != NULL)
	using_stdout = 0;
      else
	{
	  FUNC1 (FUNC0("can't open %s: %s"), name, FUNC6 (errno));
	  list_file = stdout;
	  using_stdout = 1;
	}
    }

  if (listing & LISTING_NOFORM)
    paper_height = 0;

  if (listing & LISTING_LISTING)
    FUNC5 (name);

  if (listing & LISTING_SYMBOLS)
    FUNC4 ();

  if (! using_stdout)
    {
      if (FUNC2 (list_file) == EOF)
	FUNC1 (FUNC0("can't close %s: %s"), name, FUNC6 (errno));
    }

  if (last_open_file)
    FUNC2 (last_open_file);
}