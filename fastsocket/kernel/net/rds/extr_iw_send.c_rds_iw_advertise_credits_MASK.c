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
struct rds_iw_connection {int /*<<< orphan*/  i_ack_flags; int /*<<< orphan*/  i_credits; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACK_REQUESTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct rds_connection *conn, unsigned int posted)
{
	struct rds_iw_connection *ic = conn->c_transport_data;

	if (posted == 0)
		return;

	FUNC2(FUNC1(posted), &ic->i_credits);

	/* Decide whether to send an update to the peer now.
	 * If we would send a credit update for every single buffer we
	 * post, we would end up with an ACK storm (ACK arrives,
	 * consumes buffer, we refill the ring, send ACK to remote
	 * advertising the newly posted buffer... ad inf)
	 *
	 * Performance pretty much depends on how often we send
	 * credit updates - too frequent updates mean lots of ACKs.
	 * Too infrequent updates, and the peer will run out of
	 * credits and has to throttle.
	 * For the time being, 16 seems to be a good compromise.
	 */
	if (FUNC0(FUNC3(&ic->i_credits)) >= 16)
		FUNC4(IB_ACK_REQUESTED, &ic->i_ack_flags);
}