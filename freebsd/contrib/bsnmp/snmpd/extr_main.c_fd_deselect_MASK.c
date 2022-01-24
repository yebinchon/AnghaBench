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
struct fdesc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fdesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fdesc*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC3(void *p)
{
	struct fdesc *f = p;

	FUNC0(f, link);
	FUNC1(f);
	FUNC2(f);
}