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
struct sctp_ulpevent {int /*<<< orphan*/  rmem_len; struct sctp_association* asoc; } ;
struct sctp_association {int /*<<< orphan*/  rmem_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*) ; 

__attribute__((used)) static inline void FUNC2(struct sctp_ulpevent *event)
{
	struct sctp_association *asoc = event->asoc;

	FUNC0(event->rmem_len, &asoc->rmem_alloc);
	FUNC1(asoc);
}