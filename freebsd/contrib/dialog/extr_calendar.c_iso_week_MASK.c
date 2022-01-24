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

/* Variables and functions */
 int MAX_DAYS ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(int year, int month, int day)
{
    int week = 1;
    int dow;
    int new_year_dow;
    int diy;
    int new_years_eve_dow;
    static const int thursday = 3;

    /* add the number weeks *between* date and newyear */
    diy = FUNC0(year, month, day);
    week += (diy - 1) / MAX_DAYS;

    /* 0 = Monday */
    dow = FUNC1(year, month, day);
    new_year_dow = FUNC1(year, 1, 1);

    /*
     * If New Year falls on Friday, Saturday or Sunday, then New Years's week
     * is the last week of the preceding year.  In that case subtract one week.
     */
    if (new_year_dow > thursday)
	--week;

    /* Add one week if there is a Sunday to Monday transition. */
    if (dow - new_year_dow < 0)
	++week;

    /* Check if we are in the last week of the preceding year. */
    if (week < 1) {
	week = FUNC3(--year, 12, 31);
    }

    /*
     * If we are in the same week as New Year's eve, check if New Year's eve is
     * in the first week of the next year.
     */
    new_years_eve_dow = (new_year_dow + 364 + FUNC2(year)) % MAX_DAYS;
    if (365 + FUNC2(year) - diy < MAX_DAYS
	&& new_years_eve_dow >= dow
	&& new_years_eve_dow < thursday) {
	++year;
	week = 1;
    }
    return week;
}