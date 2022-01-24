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
typedef  int /*<<< orphan*/  a3dsrc_t ;

/* Variables and functions */
 int /*<<< orphan*/  A3dHrirImpulse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(a3dsrc_t * a)
{
	FUNC8(a, 0, 0, 0, 0);
	FUNC0(a, 0, 0x4000, 0, 0, 0);
	FUNC1(a, 0x4000, 0, 0, 0, 0);
	FUNC6(a, 0, 0);
	FUNC7(a, 0, 0);
	FUNC2(a, 0x7fff, 0x7fff);
	FUNC3(a, 0x7fff, 0x7fff);

	/* SET HRTF HERE */

	/* Single spike leads to identity transfer function. */
	FUNC4(a, A3dHrirImpulse, A3dHrirImpulse);
	FUNC5(a, A3dHrirImpulse, A3dHrirImpulse);

	/* Test: Sounds saturated. */
	//a3dsrc_SetHrtfCurrent(a, A3dHrirSatTest, A3dHrirSatTest);
	//a3dsrc_SetHrtfTarget(a, A3dHrirSatTest, A3dHrirSatTest);      
}