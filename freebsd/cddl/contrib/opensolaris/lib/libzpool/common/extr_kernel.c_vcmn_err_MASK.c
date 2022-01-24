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

/* Variables and functions */
 int CE_NOTE ; 
 int CE_PANIC ; 
 char** ce_prefix ; 
 char** ce_suffix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

void
FUNC3(int ce, const char *fmt, va_list adx)
{
	if (ce == CE_PANIC)
		FUNC2(fmt, adx);
	if (ce != CE_NOTE) {	/* suppress noise in userland stress testing */
		(void) FUNC0(stderr, "%s", ce_prefix[ce]);
		(void) FUNC1(stderr, fmt, adx);
		(void) FUNC0(stderr, "%s", ce_suffix[ce]);
	}
}