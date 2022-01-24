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
struct changer_move {scalar_t__ cm_fromtype; scalar_t__ cm_totype; int /*<<< orphan*/  cm_flags; void* cm_tounit; void* cm_fromunit; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ CHET_VT ; 
 int /*<<< orphan*/  CHIOMOVE ; 
 int /*<<< orphan*/  CM_INVERT ; 
#define  SW_INVERT 128 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct changer_move*) ; 
 int /*<<< orphan*/  FUNC6 (struct changer_move*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int
FUNC11(const char *cname, int argc, char **argv)
{
	struct changer_move cmd;
	int val;

	/*
	 * On a move command, we expect the following:
	 *
	 * <from ET> <from EU> <to ET> <to EU> [inv]
	 *
	 * where ET == element type and EU == element unit.
	 */

	++argv; --argc;

	if (argc < 4) {
		FUNC10("%s: too few arguments", cname);
		goto usage;
	} else if (argc > 5) {
		FUNC10("%s: too many arguments", cname);
		goto usage;
	}
	(void) FUNC6(&cmd, 0, sizeof(cmd));

	/* <from ET>  */
	cmd.cm_fromtype = FUNC7(*argv);
	++argv; --argc;

	/* Check for voltag virtual type */
	if (CHET_VT == cmd.cm_fromtype) {
		FUNC2(*argv, &cmd.cm_fromtype, &cmd.cm_fromunit);
	} else {
		/* <from EU> */
		cmd.cm_fromunit = FUNC8(*argv);
	}
	++argv; --argc;

	/* <to ET> */
	cmd.cm_totype = FUNC7(*argv);
	++argv; --argc;

	/* Check for voltag virtual type, and report error */
	if (CHET_VT == cmd.cm_totype)
		FUNC1(1,"%s: voltag only makes sense as an element source",
		     cname);

	/* <to EU> */
	cmd.cm_tounit = FUNC8(*argv);
	++argv; --argc;

	/* Deal with optional command modifier. */
	if (argc) {
		val = FUNC9(*argv);
		switch (val) {
		case SW_INVERT:
			cmd.cm_flags |= CM_INVERT;
			break;

		default:
			FUNC1(1, "%s: inappropriate modifier `%s'",
			    cname, *argv);
			/* NOTREACHED */
		}
	}

	/* Send command to changer. */
	if (FUNC5(changer_fd, CHIOMOVE, &cmd))
		FUNC0(1, "%s: CHIOMOVE", changer_name);

	return (0);

 usage:
	(void) FUNC3(stderr, "usage: %s %s "
	    "<from ET> <from EU> <to ET> <to EU> [inv]\n", FUNC4(), cname);
	return (1);
}