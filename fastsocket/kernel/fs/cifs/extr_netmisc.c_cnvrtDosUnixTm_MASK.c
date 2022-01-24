#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int Day; int Month; int Year; } ;
struct TYPE_3__ {int TwoSeconds; int Minutes; int Hours; } ;
typedef  TYPE_1__ SMB_TIME ;
typedef  TYPE_2__ SMB_DATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* total_days_of_prev_months ; 

struct timespec FUNC3(__le16 le_date, __le16 le_time, int offset)
{
	struct timespec ts;
	int sec, min, days, month, year;
	u16 date = FUNC2(le_date);
	u16 time = FUNC2(le_time);
	SMB_TIME *st = (SMB_TIME *)&time;
	SMB_DATE *sd = (SMB_DATE *)&date;

	FUNC1(1, "date %d time %d", date, time);

	sec = 2 * st->TwoSeconds;
	min = st->Minutes;
	if ((sec > 59) || (min > 59))
		FUNC0(1, "illegal time min %d sec %d", min, sec);
	sec += (min * 60);
	sec += 60 * 60 * st->Hours;
	if (st->Hours > 24)
		FUNC0(1, "illegal hours %d", st->Hours);
	days = sd->Day;
	month = sd->Month;
	if ((days > 31) || (month > 12)) {
		FUNC0(1, "illegal date, month %d day: %d", month, days);
		if (month > 12)
			month = 12;
	}
	month -= 1;
	days += total_days_of_prev_months[month];
	days += 3652; /* account for difference in days between 1980 and 1970 */
	year = sd->Year;
	days += year * 365;
	days += (year/4); /* leap year */
	/* generalized leap year calculation is more complex, ie no leap year
	for years/100 except for years/400, but since the maximum number for DOS
	 year is 2**7, the last year is 1980+127, which means we need only
	 consider 2 special case years, ie the years 2000 and 2100, and only
	 adjust for the lack of leap year for the year 2100, as 2000 was a
	 leap year (divisable by 400) */
	if (year >= 120)  /* the year 2100 */
		days = days - 1;  /* do not count leap year for the year 2100 */

	/* adjust for leap year where we are still before leap day */
	if (year != 120)
		days -= ((year & 0x03) == 0) && (month < 2 ? 1 : 0);
	sec += 24 * 60 * 60 * days;

	ts.tv_sec = sec + offset;

	/* cFYI(1, "sec after cnvrt dos to unix time %d",sec); */

	ts.tv_nsec = 0;
	return ts;
}