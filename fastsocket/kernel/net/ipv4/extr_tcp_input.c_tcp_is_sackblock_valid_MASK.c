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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ max_window; scalar_t__ undo_marker; scalar_t__ snd_una; scalar_t__ snd_nxt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct tcp_sock *tp, int is_dsack,
				  u32 start_seq, u32 end_seq)
{
	/* Too far in future, or reversed (interpretation is ambiguous) */
	if (FUNC0(end_seq, tp->snd_nxt) || !FUNC1(start_seq, end_seq))
		return 0;

	/* Nasty start_seq wrap-around check (see comments above) */
	if (!FUNC1(start_seq, tp->snd_nxt))
		return 0;

	/* In outstanding window? ...This is valid exit for D-SACKs too.
	 * start_seq == snd_una is non-sensical (see comments above)
	 */
	if (FUNC0(start_seq, tp->snd_una))
		return 1;

	if (!is_dsack || !tp->undo_marker)
		return 0;

	/* ...Then it's D-SACK, and must reside below snd_una completely */
	if (FUNC0(end_seq, tp->snd_una))
		return 0;

	if (!FUNC1(start_seq, tp->undo_marker))
		return 1;

	/* Too old */
	if (!FUNC0(end_seq, tp->undo_marker))
		return 0;

	/* Undo_marker boundary crossing (overestimates a lot). Known already:
	 *   start_seq < undo_marker and end_seq >= undo_marker.
	 */
	return !FUNC1(start_seq, end_seq - tp->max_window);
}