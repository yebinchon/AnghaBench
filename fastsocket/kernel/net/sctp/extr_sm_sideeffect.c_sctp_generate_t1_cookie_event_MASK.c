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
struct sctp_association {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(unsigned long data)
{
	struct sctp_association *asoc = (struct sctp_association *) data;
	FUNC0(asoc, SCTP_EVENT_TIMEOUT_T1_COOKIE);
}