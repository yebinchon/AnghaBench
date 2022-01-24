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
struct changer_exchange {scalar_t__ ce_srctype; scalar_t__ ce_fdsttype; scalar_t__ ce_sdsttype; int /*<<< orphan*/  ce_flags; void* ce_sdstunit; void* ce_srcunit; void* ce_fdstunit; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CE_INVERT1 ; 
 int /*<<< orphan*/  CE_INVERT2 ; 
 scalar_t__ CHET_VT ; 
 int /*<<< orphan*/  CHIOEXCHANGE ; 
#define  SW_INVERT1 129 
#define  SW_INVERT2 128 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct changer_exchange*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct changer_exchange*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (char*) ; 
 void* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static int
FUNC12(const char *cname, int argc, char **argv)
{
	struct changer_exchange cmd;
	int val;

	/*
	 * On an exchange command, we expect the following:
	 *
  * <src ET> <src EU> <dst1 ET> <dst1 EU> [<dst2 ET> <dst2 EU>] [inv1] [inv2]
	 *
	 * where ET == element type and EU == element unit.
	 */

	++argv; --argc;

	if (argc < 4) {
		FUNC11("%s: too few arguments", cname);
		goto usage;
	} else if (argc > 8) {
		FUNC11("%s: too many arguments", cname);
		goto usage;
	}
	(void) FUNC7(&cmd, 0, sizeof(cmd));

	/* <src ET>  */
	cmd.ce_srctype = FUNC8(*argv);
	++argv; --argc;

	/* Check for voltag virtual type */
	if (CHET_VT == cmd.ce_srctype) {
		FUNC2(*argv, &cmd.ce_srctype, &cmd.ce_srcunit);
	} else {
		/* <from EU> */
		cmd.ce_srcunit = FUNC9(*argv);
	}
	++argv; --argc;

	/* <dst1 ET> */
	cmd.ce_fdsttype = FUNC8(*argv);
	++argv; --argc;

	/* Check for voltag virtual type */
	if (CHET_VT == cmd.ce_fdsttype) {
		FUNC2(*argv, &cmd.ce_fdsttype, &cmd.ce_fdstunit);
	} else {
		/* <from EU> */
		cmd.ce_fdstunit = FUNC9(*argv);
	}
	++argv; --argc;

	/*
	 * If the next token is a special word or there are no more
	 * arguments, then this is a case of simple exchange.
	 * dst2 == src.
	 */
	if ((argc == 0) || FUNC6(*argv)) {
		cmd.ce_sdsttype = cmd.ce_srctype;
		cmd.ce_sdstunit = cmd.ce_srcunit;
		goto do_special;
	}

	/* <dst2 ET> */
	cmd.ce_sdsttype = FUNC8(*argv);
	++argv; --argc;

	if (CHET_VT == cmd.ce_sdsttype)
		FUNC1(1,"%s %s: voltag only makes sense as an element source",
		     cname, *argv);

	/* <dst2 EU> */
	cmd.ce_sdstunit = FUNC9(*argv);
	++argv; --argc;

 do_special:
	/* Deal with optional command modifiers. */
	while (argc) {
		val = FUNC10(*argv);
		++argv; --argc;
		switch (val) {
		case SW_INVERT1:
			cmd.ce_flags |= CE_INVERT1;
			break;

		case SW_INVERT2:
			cmd.ce_flags |= CE_INVERT2;
			break;

		default:
			FUNC1(1, "%s: inappropriate modifier `%s'",
			    cname, *argv);
			/* NOTREACHED */
		}
	}

	/* Send command to changer. */
	if (FUNC5(changer_fd, CHIOEXCHANGE, &cmd))
		FUNC0(1, "%s: CHIOEXCHANGE", changer_name);

	return (0);

 usage:
	(void) FUNC3(stderr,
	    "usage: %s %s <src ET> <src EU> <dst1 ET> <dst1 EU>\n"
	    "       [<dst2 ET> <dst2 EU>] [inv1] [inv2]\n",
	    FUNC4(), cname);
	return (1);
}