#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ st_mtime; int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__ sb; } ;
typedef  TYPE_2__ ARCHD ;

/* Variables and functions */
 char* CURFRMTD ; 
 char* CURFRMTM ; 
 int DATELEN ; 
 int /*<<< orphan*/  D_MD_ORDER ; 
 int MODELEN ; 
 char* OLDFRMTD ; 
 char* OLDFRMTM ; 
 scalar_t__ SIXMONTHS ; 
 int d_first ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC6(ARCHD *arcn)
{
	char f_date[DATELEN];
	char f_mode[MODELEN];
	const char *timefrmt;

	if (d_first < 0)
		d_first = (*FUNC1(D_MD_ORDER) == 'd');

	if ((arcn->sb.st_mtime + SIXMONTHS) <= FUNC4(NULL))
		timefrmt = d_first ? OLDFRMTD : OLDFRMTM;
	else
		timefrmt = d_first ? CURFRMTD : CURFRMTM;

	/*
	 * convert time to string, and print
	 */
	if (FUNC2(f_date, DATELEN, timefrmt,
	    FUNC0(&(arcn->sb.st_mtime))) == 0)
		f_date[0] = '\0';
	FUNC3(arcn->sb.st_mode, f_mode);
	FUNC5("%s%s %s\n", f_mode, f_date, arcn->name);
	return;
}