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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  ABI_AIX 130 
#define  ABI_DARWIN 129 
#define  ABI_V4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int DEFAULT_ABI ; 
 int /*<<< orphan*/  DOT_SYMBOLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ TARGET_AIX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 

void
FUNC5 (FILE *file, const char *fname)
{
  if (fname[0] != '.')
    {
      switch (DEFAULT_ABI)
	{
	default:
	  FUNC3 ();

	case ABI_AIX:
	  if (DOT_SYMBOLS)
	    FUNC4 ('.', file);
	  else
	    FUNC0 (file, "L.");
	  break;

	case ABI_V4:
	case ABI_DARWIN:
	  break;
	}
    }
  if (TARGET_AIX)
    FUNC1 (file, fname);
  else
    FUNC2 (file, fname);
}