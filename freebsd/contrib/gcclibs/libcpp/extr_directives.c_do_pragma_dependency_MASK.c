#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 scalar_t__ CPP_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (cpp_reader *pfile)
{
  const char *fname;
  int angle_brackets, ordering;

  fname = FUNC6 (pfile, &angle_brackets, NULL);
  if (!fname)
    return;

  ordering = FUNC1 (pfile, fname, angle_brackets);
  if (ordering < 0)
    FUNC2 (pfile, CPP_DL_WARNING, "cannot find source file %s", fname);
  else if (ordering > 0)
    {
      FUNC2 (pfile, CPP_DL_WARNING,
		 "current file is older than %s", fname);
      if (FUNC3 (pfile)->type != CPP_EOF)
	{
	  FUNC0 (pfile, 1);
	  FUNC4 (pfile, CPP_DL_WARNING, 0);
	}
    }

  FUNC5 ((void *) fname);
}