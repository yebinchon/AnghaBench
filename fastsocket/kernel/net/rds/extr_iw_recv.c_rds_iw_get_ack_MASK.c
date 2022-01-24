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
typedef  int /*<<< orphan*/  u64 ;
struct rds_iw_connection {int /*<<< orphan*/  i_ack_lock; int /*<<< orphan*/  i_ack_next; int /*<<< orphan*/  i_ack_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACK_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u64 FUNC3(struct rds_iw_connection *ic)
{
	unsigned long flags;
	u64 seq;

	FUNC0(IB_ACK_REQUESTED, &ic->i_ack_flags);

	FUNC1(&ic->i_ack_lock, flags);
	seq = ic->i_ack_next;
	FUNC2(&ic->i_ack_lock, flags);

	return seq;
}