#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int (*) (),int /*<<< orphan*/ *) ; 
 scalar_t__ iidesc_dump ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ; 
 char* progname ; 
 scalar_t__ FUNC4 (char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_ctf_save_cb ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char **argv)
{
	tdata_t *ctftd, *stabrtd, *stabtd, *difftd;
	char *ctfname, *stabname;
	int new;

	progname = argv[0];

	if (argc != 3) {
		FUNC8();
		FUNC0(2);
	}

	ctfname = argv[1];
	stabname = argv[2];

	stabrtd = FUNC6();
	stabtd = FUNC6();
	difftd = FUNC6();

	if (FUNC5(stabrtd, stabname, 0) != 0)
		FUNC3(stabrtd, stabtd, NULL, 1);
	else if (FUNC4(&stabname, 1, NULL, read_ctf_save_cb, &stabtd, 0)
	    == 0)
		FUNC7("%s doesn't have stabs or CTF\n", stabname);

	if (FUNC4(&ctfname, 1, NULL, read_ctf_save_cb, &ctftd, 0) == 0)
		FUNC7("%s doesn't contain CTF data\n", ctfname);

	FUNC3(stabtd, ctftd, difftd, 0);

	if ((new = FUNC1(difftd->td_iihash)) != 0) {
		(void) FUNC2(difftd->td_iihash, (int (*)())iidesc_dump,
		    NULL);
		FUNC7("%s grew by %d\n", stabname, new);
	}

	return (0);
}