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
struct sctp_ulpevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpevent*) ; 
 scalar_t__ FUNC2 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpevent*) ; 

void FUNC5(struct sctp_ulpevent *event)
{
	if (FUNC2(event))
		FUNC4(event);
	else
		FUNC3(event);

	FUNC0(FUNC1(event));
}