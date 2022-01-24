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
struct sctp_bind_addr {scalar_t__ malloced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_addr ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_bind_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_bind_addr*) ; 

void FUNC3(struct sctp_bind_addr *bp)
{
	/* Empty the bind address list. */
	FUNC2(bp);

	if (bp->malloced) {
		FUNC1(bp);
		FUNC0(bind_addr);
	}
}