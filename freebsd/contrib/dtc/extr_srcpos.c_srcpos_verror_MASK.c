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
typedef  int /*<<< orphan*/  va_list ;
struct srcpos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct srcpos*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(struct srcpos *pos, const char *prefix,
		   const char *fmt, va_list va)
{
	char *srcstr;

	srcstr = FUNC2(pos);

	FUNC0(stderr, "%s: %s ", prefix, srcstr);
	FUNC3(stderr, fmt, va);
	FUNC0(stderr, "\n");

	FUNC1(srcstr);
}