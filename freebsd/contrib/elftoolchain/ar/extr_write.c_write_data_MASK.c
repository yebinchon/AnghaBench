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
struct bsdar {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 scalar_t__ FUNC1 (struct archive*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct bsdar*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bsdar *bsdar, struct archive *a, const void *buf, size_t s)
{
	if (FUNC1(a, buf, s) != (ssize_t)s)
		FUNC2(bsdar, 0, "%s", FUNC0(a));
}