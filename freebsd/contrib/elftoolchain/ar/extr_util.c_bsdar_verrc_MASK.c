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
struct bsdar {char* progname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bsdar *bsdar, int code, const char *fmt, va_list ap)
{

	FUNC0(stderr, "%s: fatal: ", bsdar->progname);
	FUNC2(stderr, fmt, ap);
	if (code != 0)
		FUNC0(stderr, ": %s", FUNC1(code));
	FUNC0(stderr, "\n");
}