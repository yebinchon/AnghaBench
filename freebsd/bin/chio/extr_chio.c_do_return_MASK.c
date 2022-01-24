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
typedef  scalar_t__ uint16_t ;
struct changer_move {int /*<<< orphan*/  cm_tounit; int /*<<< orphan*/  cm_totype; scalar_t__ cm_fromunit; scalar_t__ cm_fromtype; } ;
struct changer_element_status {int ces_flags; int /*<<< orphan*/  ces_source_addr; int /*<<< orphan*/  ces_source_type; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int CES_SOURCE_VALID ; 
 scalar_t__ CHET_VT ; 
 int /*<<< orphan*/  CHIOMOVE ; 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct changer_element_status*) ; 
 struct changer_element_status* FUNC5 (unsigned int,unsigned int,int) ; 
 char* FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct changer_move*) ; 
 int /*<<< orphan*/  FUNC8 (struct changer_move*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static int
FUNC12(const char *cname, int argc, char **argv)
{
	struct changer_element_status *ces;
	struct changer_move cmd;
	uint16_t	type, element;

	++argv; --argc;

	if (argc < 2) {
		FUNC11("%s: too few arguments", cname);
		goto usage;
	} else if (argc > 3) {
		FUNC11("%s: too many arguments", cname);
		goto usage;
	}

	type = FUNC9(*argv);
	++argv; --argc;
	
	/* Handle voltag virtual Changer Element Type */
	if (CHET_VT == type) {
		FUNC2(*argv, &type, &element);
	} else {
		element = FUNC10(*argv);
	}
	++argv; --argc;

	/* Get the status */
	ces = FUNC5((unsigned int)type, (unsigned int)element,
	    CHET_VT == type);

	if (NULL == ces)
		FUNC1(1, "%s: null element status pointer", cname);

	if (!(ces->ces_flags & CES_SOURCE_VALID))
		FUNC1(1, "%s: no source information", cname);

	(void) FUNC8(&cmd, 0, sizeof(cmd));

	cmd.cm_fromtype = type;
	cmd.cm_fromunit = element;
	cmd.cm_totype = ces->ces_source_type;
	cmd.cm_tounit = ces->ces_source_addr;

	if (FUNC7(changer_fd, CHIOMOVE, &cmd) == -1)
		FUNC0(1, "%s: CHIOMOVE", changer_name);
	FUNC4(ces);

	return(0);

usage:
	(void) FUNC3(stderr, "usage: %s %s "
	    "<from ET> <from EU>\n", FUNC6(), cname);
	return(1);
}