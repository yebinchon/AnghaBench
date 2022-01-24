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
struct mixart_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXART_BA1_BRUTAL_RESET_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct mixart_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(struct mixart_mgr *mgr)
{
	/* reset miXart */
	FUNC1( 1, FUNC0(mgr, MIXART_BA1_BRUTAL_RESET_OFFSET) );
	return;
}