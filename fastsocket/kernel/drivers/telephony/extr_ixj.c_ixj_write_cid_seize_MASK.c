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
typedef  int /*<<< orphan*/  IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(IXJ *j)
{
	int cnt;

	for (cnt = 0; cnt < 150; cnt++) {
		FUNC0(j, 0);
		FUNC0(j, 1);
	}
	for (cnt = 0; cnt < 180; cnt++) {
		FUNC0(j, 1);
	}
}