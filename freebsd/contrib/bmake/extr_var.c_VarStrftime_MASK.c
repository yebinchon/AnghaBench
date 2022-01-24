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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC5(const char *fmt, int zulu, time_t utc)
{
    char buf[BUFSIZ];

    if (!utc)
	FUNC4(&utc);
    if (!*fmt)
	fmt = "%c";
    FUNC3(buf, sizeof(buf), fmt, zulu ? FUNC1(&utc) : FUNC2(&utc));
    
    buf[sizeof(buf) - 1] = '\0';
    return FUNC0(buf);
}