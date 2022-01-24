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
struct r8a66597_root_hub {int old_syssts; int port; int /*<<< orphan*/  scount; } ;
struct r8a66597 {struct r8a66597_root_hub* root_hub; } ;

/* Variables and functions */
 int LNST ; 
 int /*<<< orphan*/  R8A66597_MAX_SAMPLING ; 
 int USB_PORT_FEAT_CONNECTION ; 
 int USB_PORT_FEAT_C_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597, int port,
					int connect)
{
	struct r8a66597_root_hub *rh = &r8a66597->root_hub[port];

	rh->old_syssts = FUNC1(r8a66597, FUNC0(port)) & LNST;
	rh->scount = R8A66597_MAX_SAMPLING;
	if (connect)
		rh->port |= 1 << USB_PORT_FEAT_CONNECTION;
	else
		rh->port &= ~(1 << USB_PORT_FEAT_CONNECTION);
	rh->port |= 1 << USB_PORT_FEAT_C_CONNECTION;

	FUNC2(r8a66597);
}