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
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* day_n ; 
 int FUNC1 (int) ; 

void
FUNC2(int unix_date, __le16 *time, __le16 *date)
{
	int day, year, nl_day, month;

	unix_date = FUNC1(unix_date);
	*time = FUNC0(
		(unix_date % 60) / 2 + (((unix_date / 60) % 60) << 5) +
		(((unix_date / 3600) % 24) << 11));
	day = unix_date / 86400 - 3652;
	year = day / 365;
	if ((year + 3) / 4 + 365 * year > day)
		year--;
	day -= (year + 3) / 4 + 365 * year;
	if (day == 59 && !(year & 3)) {
		nl_day = day;
		month = 2;
	} else {
		nl_day = (year & 3) || day <= 59 ? day : day - 1;
		for (month = 1; month < 12; month++)
			if (day_n[month] > nl_day)
				break;
	}
	*date = FUNC0(nl_day - day_n[month - 1] + 1 + (month << 5) + (year << 9));
}