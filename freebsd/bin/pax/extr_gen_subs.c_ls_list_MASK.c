#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; char* st_size; int /*<<< orphan*/  st_rdev; int /*<<< orphan*/  st_uid; scalar_t__ st_nlink; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_mode; } ;
struct TYPE_3__ {char* name; scalar_t__ type; char* ln_name; struct stat sb; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 char* CURFRMTD ; 
 char* CURFRMTM ; 
 int DATELEN ; 
 int /*<<< orphan*/  D_MD_ORDER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MODELEN ; 
 char* OLDFRMTD ; 
 char* OLDFRMTM ; 
 scalar_t__ PAX_BLK ; 
 scalar_t__ PAX_CHR ; 
 scalar_t__ PAX_HLK ; 
 scalar_t__ PAX_HRG ; 
 scalar_t__ PAX_SLK ; 
 scalar_t__ SIXMONTHS ; 
 int d_first ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vflag ; 

void
FUNC11(ARCHD *arcn, time_t now, FILE *fp)
{
	struct stat *sbp;
	char f_mode[MODELEN];
	char f_date[DATELEN];
	const char *timefrmt;

	/*
	 * if not verbose, just print the file name
	 */
	if (!vflag) {
		(void)FUNC3(fp, "%s\n", arcn->name);
		(void)FUNC2(fp);
		return;
	}

	if (d_first < 0)
		d_first = (*FUNC7(D_MD_ORDER) == 'd');
	/*
	 * user wants long mode
	 */
	sbp = &(arcn->sb);
	FUNC10(sbp->st_mode, f_mode);

	/*
	 * time format based on age compared to the time pax was started.
	 */
	if ((sbp->st_mtime + SIXMONTHS) <= now)
		timefrmt = d_first ? OLDFRMTD : OLDFRMTM;
	else
		timefrmt = d_first ? CURFRMTD : CURFRMTM;

	/*
	 * print file mode, link count, uid, gid and time
	 */
	if (FUNC9(f_date,DATELEN,timefrmt,FUNC4(&(sbp->st_mtime))) == 0)
		f_date[0] = '\0';
	(void)FUNC3(fp, "%s%2ju %-12s %-12s ", f_mode,
		(uintmax_t)sbp->st_nlink,
		FUNC6(sbp->st_uid, 1), FUNC5(sbp->st_gid, 1));

	/*
	 * print device id's for devices, or sizes for other nodes
	 */
	if ((arcn->type == PAX_CHR) || (arcn->type == PAX_BLK))
#		ifdef NET2_STAT
		(void)fprintf(fp, "%4u,%4u ", MAJOR(sbp->st_rdev),
		    MINOR(sbp->st_rdev));
#		else
		(void)FUNC3(fp, "%4lu,%4lu ", (unsigned long)FUNC0(sbp->st_rdev),
		    (unsigned long)FUNC1(sbp->st_rdev));
#		endif
	else {
#		ifdef NET2_STAT
		(void)fprintf(fp, "%9lu ", sbp->st_size);
#		else
		(void)FUNC3(fp, "%9ju ", (uintmax_t)sbp->st_size);
#		endif
	}

	/*
	 * print name and link info for hard and soft links
	 */
	(void)FUNC3(fp, "%s %s", f_date, arcn->name);
	if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
		(void)FUNC3(fp, " == %s\n", arcn->ln_name);
	else if (arcn->type == PAX_SLK)
		(void)FUNC3(fp, " => %s\n", arcn->ln_name);
	else
		(void)FUNC8('\n', fp);
	(void)FUNC2(fp);
	return;
}