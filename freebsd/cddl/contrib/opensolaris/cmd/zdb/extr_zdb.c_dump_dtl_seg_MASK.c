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
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *arg, uint64_t start, uint64_t size)
{
	char *prefix = arg;

	(void) FUNC0("%s [%llu,%llu) length %llu\n",
	    prefix,
	    (u_longlong_t)start,
	    (u_longlong_t)(start + size),
	    (u_longlong_t)(size));
}