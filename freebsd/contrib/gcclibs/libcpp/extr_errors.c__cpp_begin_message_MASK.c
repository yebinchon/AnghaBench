#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  source_location ;
struct TYPE_6__ {int /*<<< orphan*/  errors; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
#define  CPP_DL_ERROR 132 
 int FUNC0 (int) ; 
#define  CPP_DL_ICE 131 
#define  CPP_DL_PEDWARN 130 
#define  CPP_DL_WARNING 129 
 scalar_t__ FUNC1 (int) ; 
#define  CPP_DL_WARNING_SYSHDR 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inhibit_errors ; 
 int /*<<< orphan*/  inhibit_warnings ; 
 int /*<<< orphan*/  pedantic_errors ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  warn_system_headers ; 
 int /*<<< orphan*/  warnings_are_errors ; 

int
FUNC7 (cpp_reader *pfile, int code,
		    source_location src_loc, unsigned int column)
{
  int level = FUNC0 (code);

  switch (level)
    {
    case CPP_DL_WARNING:
    case CPP_DL_PEDWARN:
      if (FUNC4 (pfile)
	  && ! FUNC2 (pfile, warn_system_headers))
	return 0;
      /* Fall through.  */

    case CPP_DL_WARNING_SYSHDR:
      if (FUNC2 (pfile, warnings_are_errors)
	  || (level == CPP_DL_PEDWARN && FUNC2 (pfile, pedantic_errors)))
	{
	  if (FUNC2 (pfile, inhibit_errors))
	    return 0;
	  level = CPP_DL_ERROR;
	  pfile->errors++;
	}
      else if (FUNC2 (pfile, inhibit_warnings))
	return 0;
      break;

    case CPP_DL_ERROR:
      if (FUNC2 (pfile, inhibit_errors))
	return 0;
      /* ICEs cannot be inhibited.  */
    case CPP_DL_ICE:
      pfile->errors++;
      break;
    }

  FUNC6 (pfile, src_loc, column);
  if (FUNC1 (level))
    FUNC5 (FUNC3("warning: "), stderr);
  else if (level == CPP_DL_ICE)
    FUNC5 (FUNC3("internal error: "), stderr);
  else
    FUNC5 (FUNC3("error: "), stderr);

  return 1;
}