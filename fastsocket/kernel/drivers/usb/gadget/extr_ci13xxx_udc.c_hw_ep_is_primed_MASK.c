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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_ENDPTPRIME ; 
 int /*<<< orphan*/  CAP_ENDPTSTAT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(int num, int dir)
{
	u32 reg = FUNC0(CAP_ENDPTPRIME, ~0) | FUNC0(CAP_ENDPTSTAT, ~0);

	return FUNC2(FUNC1(num, dir), (void *)&reg);
}