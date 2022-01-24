#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dr ;
struct TYPE_7__ {int ddr_type; } ;
typedef  TYPE_1__ dmu_diff_record_t ;
struct TYPE_8__ {scalar_t__ zerr; int /*<<< orphan*/  errbuf; int /*<<< orphan*/  datafd; int /*<<< orphan*/  outputfd; } ;
typedef  TYPE_2__ differ_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DDR_FREE 129 
#define  DDR_INUSE 128 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void *
FUNC10(void *arg)
{
	differ_info_t *di = arg;
	dmu_diff_record_t dr;
	FILE *ofp;
	int err = 0;

	if ((ofp = FUNC4(di->outputfd, "w")) == NULL) {
		di->zerr = errno;
		(void) FUNC7(errno, di->errbuf, sizeof (di->errbuf));
		(void) FUNC1(di->datafd);
		return ((void *)-1);
	}

	for (;;) {
		char *cp = (char *)&dr;
		int len = sizeof (dr);
		int rv;

		do {
			rv = FUNC5(di->datafd, cp, len);
			cp += rv;
			len -= rv;
		} while (len > 0 && rv > 0);

		if (rv < 0 || (rv == 0 && len != sizeof (dr))) {
			di->zerr = EPIPE;
			break;
		} else if (rv == 0) {
			/* end of file at a natural breaking point */
			break;
		}

		switch (dr.ddr_type) {
		case DDR_FREE:
			err = FUNC8(ofp, di, &dr);
			break;
		case DDR_INUSE:
			err = FUNC9(ofp, di, &dr);
			break;
		default:
			di->zerr = EPIPE;
			break;
		}

		if (err || di->zerr)
			break;
	}

	(void) FUNC3(ofp);
	(void) FUNC1(di->datafd);
	if (err)
		return ((void *)-1);
	if (di->zerr) {
		FUNC0(di->zerr == EPIPE);
		(void) FUNC6(di->errbuf, sizeof (di->errbuf),
		    FUNC2(TEXT_DOMAIN,
		    "Internal error: bad data from diff IOCTL"));
		return ((void *)-1);
	}
	return ((void *)0);
}