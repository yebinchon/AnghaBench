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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  longstring ;

/* Variables and functions */
 int /*<<< orphan*/  D_MD_ORDER ; 
 scalar_t__ SIXMONTHS ; 
 scalar_t__ f_sectime ; 
 char* f_timeformat ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(time_t ftime)
{
	char longstring[80];
	static time_t now = 0;
	const char *format;
	static int d_first = -1;

	if (d_first < 0)
		d_first = (*FUNC4(D_MD_ORDER) == 'd');
	if (now == 0)
		now = FUNC5(NULL);

#define	SIXMONTHS	((365 / 2) * 86400)
	if (f_timeformat)  /* user specified format */
		format = f_timeformat;
	else if (f_sectime)
		/* mmm dd hh:mm:ss yyyy || dd mmm hh:mm:ss yyyy */
		format = d_first ? "%e %b %T %Y" : "%b %e %T %Y";
	else if (ftime + SIXMONTHS > now && ftime < now + SIXMONTHS)
		/* mmm dd hh:mm || dd mmm hh:mm */
		format = d_first ? "%e %b %R" : "%b %e %R";
	else
		/* mmm dd  yyyy || dd mmm  yyyy */
		format = d_first ? "%e %b  %Y" : "%b %e  %Y";
	FUNC3(longstring, sizeof(longstring), format, FUNC2(&ftime));
	FUNC1(longstring, stdout);
	FUNC0(' ', stdout);
}