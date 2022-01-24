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
typedef  scalar_t__ u16 ;
struct r8a66597 {scalar_t__ bus_suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTCH ; 
 int /*<<< orphan*/  ATTCHE ; 
 int /*<<< orphan*/  DTCH ; 
 int /*<<< orphan*/  DTCHE ; 
 scalar_t__ FS_JSTS ; 
 int /*<<< orphan*/  HSE ; 
 scalar_t__ LS_JSTS ; 
 scalar_t__ SE0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct r8a66597 *r8a66597, int port,
					u16 syssts)
{
	if (syssts == SE0) {
		FUNC6(r8a66597, ~ATTCH, FUNC1(port));
		FUNC4(r8a66597, ATTCHE, FUNC0(port));
	} else {
		if (syssts == FS_JSTS)
			FUNC4(r8a66597, HSE, FUNC2(port));
		else if (syssts == LS_JSTS)
			FUNC3(r8a66597, HSE, FUNC2(port));

		FUNC6(r8a66597, ~DTCH, FUNC1(port));
		FUNC4(r8a66597, DTCHE, FUNC0(port));

		if (r8a66597->bus_suspended)
			FUNC8(FUNC5(r8a66597));
	}

	FUNC7(FUNC5(r8a66597));
}