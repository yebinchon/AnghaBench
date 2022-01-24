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
typedef  int time_t ;
struct tm {int tm_sec; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 struct tm* FUNC1 (int*) ; 
 int FUNC2 (struct tm*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(char *str, time_t *tval)
{
	struct tm *lt;
	char *dot = NULL;

	lt = FUNC1(tval);
	if ((dot = FUNC3(str, '.')) != NULL) {
		/*
		 * seconds (.ss)
		 */
		*dot++ = '\0';
		if (FUNC4(dot) != 2)
			return(-1);
		if ((lt->tm_sec = FUNC0(dot)) > 61)
			return(-1);
	} else
		lt->tm_sec = 0;

	switch (FUNC4(str)) {
	case 10:
		/*
		 * year (yy)
		 * watch out for year 2000
		 */
		if ((lt->tm_year = FUNC0(str)) < 69)
			lt->tm_year += 100;
		str += 2;
		/* FALLTHROUGH */
	case 8:
		/*
		 * month (mm)
		 * watch out months are from 0 - 11 internally
		 */
		if ((lt->tm_mon = FUNC0(str)) > 12)
			return(-1);
		--lt->tm_mon;
		str += 2;
		/* FALLTHROUGH */
	case 6:
		/*
		 * day (dd)
		 */
		if ((lt->tm_mday = FUNC0(str)) > 31)
			return(-1);
		str += 2;
		/* FALLTHROUGH */
	case 4:
		/*
		 * hour (hh)
		 */
		if ((lt->tm_hour = FUNC0(str)) > 23)
			return(-1);
		str += 2;
		/* FALLTHROUGH */
	case 2:
		/*
		 * minute (mm)
		 */
		if ((lt->tm_min = FUNC0(str)) > 59)
			return(-1);
		break;
	default:
		return(-1);
	}
	/*
	 * convert broken-down time to GMT clock time seconds
	 */
	if ((*tval = FUNC2(lt)) == -1)
		return(-1);
	return(0);
}