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
typedef  int /*<<< orphan*/  u8 ;
struct garp_applicant {int /*<<< orphan*/  pdu; } ;

/* Variables and functions */
 int /*<<< orphan*/  GARP_END_MARK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct garp_applicant *app)
{
	if (FUNC1(app->pdu) < sizeof(u8))
		return -1;
	*(u8 *)FUNC0(app->pdu, sizeof(u8)) = GARP_END_MARK;
	return 0;
}