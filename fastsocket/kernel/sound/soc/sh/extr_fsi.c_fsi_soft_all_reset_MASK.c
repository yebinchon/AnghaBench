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
 int /*<<< orphan*/  SOFT_RST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 status = FUNC0(SOFT_RST);

	/* port AB reset */
	status &= 0x000000ff;
	FUNC1(SOFT_RST, status);
	FUNC2(10);

	/* soft reset */
	status &= 0x000000f0;
	FUNC1(SOFT_RST, status);
	status |= 0x00000001;
	FUNC1(SOFT_RST, status);
	FUNC2(10);
}