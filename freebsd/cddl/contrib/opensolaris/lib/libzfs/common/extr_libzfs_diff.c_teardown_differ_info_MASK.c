#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cleanupfd; int /*<<< orphan*/  tomnt; int /*<<< orphan*/  tmpsnap; int /*<<< orphan*/  tosnap; int /*<<< orphan*/  frommnt; int /*<<< orphan*/  fromsnap; int /*<<< orphan*/  dsmnt; int /*<<< orphan*/  ds; } ;
typedef  TYPE_1__ differ_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(differ_info_t *di)
{
	FUNC1(di->ds);
	FUNC1(di->dsmnt);
	FUNC1(di->fromsnap);
	FUNC1(di->frommnt);
	FUNC1(di->tosnap);
	FUNC1(di->tmpsnap);
	FUNC1(di->tomnt);
	(void) FUNC0(di->cleanupfd);
}