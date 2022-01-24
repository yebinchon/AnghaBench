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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,struct tm*) ; 

char *
FUNC2(time_t tm)
{
    struct tm	  	*parts;
    static char	  	buf[128];

    parts = FUNC0(&tm);
    (void)FUNC1(buf, sizeof buf, "%k:%M:%S %b %d, %Y", parts);
    return(buf);
}