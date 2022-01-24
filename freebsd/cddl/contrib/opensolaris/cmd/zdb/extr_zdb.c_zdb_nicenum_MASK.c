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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__* dump_opt ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(uint64_t num, char *buf, size_t buflen)
{
	if (dump_opt['P'])
		(void) FUNC1(buf, buflen, "%llu", (longlong_t)num);
	else
		FUNC0(num, buf, sizeof (buf));
}