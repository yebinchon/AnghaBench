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
struct TYPE_2__ {scalar_t__ lpm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_DEVLC ; 
 int /*<<< orphan*/  CAP_PORTSC ; 
 int /*<<< orphan*/  DEVLC_PSPD ; 
 int /*<<< orphan*/  PORTSC_HSP ; 
 TYPE_1__ hw_bank ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
	return hw_bank.lpm ? FUNC0(CAP_DEVLC, DEVLC_PSPD) :
		FUNC0(CAP_PORTSC, PORTSC_HSP);
}