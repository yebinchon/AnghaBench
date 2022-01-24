#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; int /*<<< orphan*/  DARF; int /*<<< orphan*/  DAPF; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_1__ dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	if (dev.mode & FMODE_WRITE) {
		FUNC0(&dev.DAPF);
		FUNC1();
	}
	if (dev.mode & FMODE_READ) {
		FUNC0(&dev.DARF);
		FUNC2();
	}
}