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
struct garp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GARP_EVENT_TRANSMIT_PDU ; 
 int /*<<< orphan*/  FUNC0 (struct garp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct garp_applicant *app = (struct garp_applicant *)data;

	FUNC4(&app->lock);
	FUNC0(app, GARP_EVENT_TRANSMIT_PDU);
	FUNC2(app);
	FUNC5(&app->lock);

	FUNC3(app);
	FUNC1(app);
}