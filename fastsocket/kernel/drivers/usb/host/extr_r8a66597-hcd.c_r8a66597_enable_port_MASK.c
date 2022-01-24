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
typedef  int u16 ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int ATTCHE ; 
 int BURST ; 
 int CPU_ADR_RD_WR ; 
 int DCFM ; 
 int DRPD ; 
 int /*<<< orphan*/  DTCHE ; 
 int HSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct r8a66597 *r8a66597, int port)
{
	u16 val;

	val = port ? DRPD : DCFM | DRPD;
	FUNC4(r8a66597, val, FUNC2(port));
	FUNC4(r8a66597, HSE, FUNC2(port));

	FUNC5(r8a66597, BURST | CPU_ADR_RD_WR, FUNC0(port));
	FUNC3(r8a66597, DTCHE, FUNC1(port));
	FUNC4(r8a66597, ATTCHE, FUNC1(port));
}