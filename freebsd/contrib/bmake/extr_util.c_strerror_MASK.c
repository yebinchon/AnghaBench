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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 char** sys_errlist ; 
 int sys_nerr ; 

char *
FUNC1(int e)
{
    static char buf[100];
    if (e < 0 || e >= sys_nerr) {
	FUNC0(buf, sizeof(buf), "Unknown error %d", e);
	return buf;
    }
    else
	return sys_errlist[e];
}