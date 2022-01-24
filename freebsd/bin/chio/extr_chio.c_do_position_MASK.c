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
struct changer_position {int /*<<< orphan*/  cp_flags; int /*<<< orphan*/  cp_unit; int /*<<< orphan*/  cp_type; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CHIOPOSITION ; 
 int /*<<< orphan*/  CP_INVERT ; 
#define  SW_INVERT 128 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct changer_position*) ; 
 int /*<<< orphan*/  FUNC5 (struct changer_position*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static int
FUNC10(const char *cname, int argc, char **argv)
{
	struct changer_position cmd;
	int val;

	/*
	 * On a position command, we expect the following:
	 *
	 * <to ET> <to EU> [inv]
	 *
	 * where ET == element type and EU == element unit.
	 */

	++argv; --argc;

	if (argc < 2) {
		FUNC9("%s: too few arguments", cname);
		goto usage;
	} else if (argc > 3) {
		FUNC9("%s: too many arguments", cname);
		goto usage;
	}
	(void) FUNC5(&cmd, 0, sizeof(cmd));

	/* <to ET>  */
	cmd.cp_type = FUNC6(*argv);
	++argv; --argc;

	/* <to EU> */
	cmd.cp_unit = FUNC7(*argv);
	++argv; --argc;

	/* Deal with optional command modifier. */
	if (argc) {
		val = FUNC8(*argv);
		switch (val) {
		case SW_INVERT:
			cmd.cp_flags |= CP_INVERT;
			break;

		default:
			FUNC1(1, "%s: inappropriate modifier `%s'",
			    cname, *argv);
			/* NOTREACHED */
		}
	}

	/* Send command to changer. */
	if (FUNC4(changer_fd, CHIOPOSITION, &cmd))
		FUNC0(1, "%s: CHIOPOSITION", changer_name);

	return (0);

 usage:
	(void) FUNC2(stderr, "usage: %s %s <to ET> <to EU> [inv]\n",
	    FUNC3(), cname);
	return (1);
}