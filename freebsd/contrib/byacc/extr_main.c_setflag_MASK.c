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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 char* VERSION ; 
 int backtrack ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int gflag ; 
 int iflag ; 
 int lflag ; 
 int locations ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int pure_parser ; 
 int rflag ; 
 int sflag ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int vflag ; 

__attribute__((used)) static void
FUNC4(int ch)
{
    switch (ch)
    {
    case 'B':
#if defined(YYBTYACC)
	backtrack = 1;
#else
	FUNC2("-B", "reconfigure with --enable-btyacc");
#endif
	break;

    case 'd':
	dflag = 1;
	break;

    case 'g':
	gflag = 1;
	break;

    case 'i':
	iflag = 1;
	break;

    case 'l':
	lflag = 1;
	break;

    case 'L':
#if defined(YYBTYACC)
	locations = 1;
#else
	FUNC2("-L", "reconfigure with --enable-btyacc");
#endif
	break;

    case 'P':
	pure_parser = 1;
	break;

    case 'r':
	rflag = 1;
	break;

    case 's':
	sflag = 1;
	break;

    case 't':
	tflag = 1;
	break;

    case 'v':
	vflag = 1;
	break;

    case 'V':
	FUNC1("%s - %s\n", myname, VERSION);
	FUNC0(EXIT_SUCCESS);

    case 'y':
	/* noop for bison compatibility. byacc is already designed to be posix
	 * yacc compatible. */
	break;

    default:
	FUNC3();
    }
}