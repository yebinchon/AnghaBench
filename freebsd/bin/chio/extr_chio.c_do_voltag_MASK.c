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
typedef  void* u_int16_t ;
struct TYPE_2__ {void* cv_serial; scalar_t__ cv_volid; } ;
struct changer_set_voltag_request {int /*<<< orphan*/  csvr_flags; TYPE_1__ csvr_voltag; void* csvr_addr; int /*<<< orphan*/  csvr_type; } ;
typedef  int /*<<< orphan*/  csvr ;

/* Variables and functions */
 int /*<<< orphan*/  CHIOSETVOLTAG ; 
 int /*<<< orphan*/  CSVR_ALTERNATE ; 
 int /*<<< orphan*/  CSVR_MODE_CLEAR ; 
 int /*<<< orphan*/  CSVR_MODE_REPLACE ; 
 int /*<<< orphan*/  CSVR_MODE_SET ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct changer_set_voltag_request*,int) ; 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct changer_set_voltag_request*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int
FUNC11(const char *cname, int argc, char **argv)
{
	int force = 0;
	int clear = 0;
	int alternate = 0;
	int c;
	struct changer_set_voltag_request csvr;

	FUNC1(&csvr, sizeof(csvr));

	optind = optreset = 1;
	while ((c = FUNC4(argc, argv, "fca")) != -1) {
		switch (c) {
		case 'f':
			force = 1;
			break;
		case 'c':
			clear = 1;
			break;
		case 'a':
			alternate = 1;
			break;
		default:
			FUNC10("%s: bad option", cname);
			goto usage;
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 2) {
		FUNC10("%s: missing element specification", cname);
		goto usage;
	}

	csvr.csvr_type = FUNC7(argv[0]);
	csvr.csvr_addr = (u_int16_t)FUNC0(argv[1]);

	if (!clear) {
		if (argc < 3 || argc > 4) {
			FUNC10("%s: missing argument", cname);
			goto usage;
		}

		if (force)
			csvr.csvr_flags = CSVR_MODE_REPLACE;
		else
			csvr.csvr_flags = CSVR_MODE_SET;

		if (FUNC9(argv[2]) > sizeof(csvr.csvr_voltag.cv_volid)) {
			FUNC10("%s: volume label too long", cname);
			goto usage;
		}

		FUNC8((char *)csvr.csvr_voltag.cv_volid, argv[2],
		       sizeof(csvr.csvr_voltag.cv_volid));

		if (argc == 4) {
			csvr.csvr_voltag.cv_serial = (u_int16_t)FUNC0(argv[3]);
		}
	} else {
		if (argc != 2) {
			FUNC10("%s: unexpected argument", cname);
			goto usage;
		}
		csvr.csvr_flags = CSVR_MODE_CLEAR;
	}

	if (alternate) {
		csvr.csvr_flags |= CSVR_ALTERNATE;
	}

	if (FUNC6(changer_fd, CHIOSETVOLTAG, &csvr))
		FUNC2(1, "%s: CHIOSETVOLTAG", changer_name);

	return 0;
 usage:
	(void) FUNC3(stderr, 
		       "usage: %s %s [-fca] <element> [<voltag> [<vsn>] ]\n",
		       FUNC5(), cname);
	return 1;
}