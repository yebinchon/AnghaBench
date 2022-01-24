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
struct seq_oss_readq {scalar_t__ qlen; scalar_t__ head; scalar_t__ tail; int /*<<< orphan*/  pre_event_timeout; int /*<<< orphan*/  midi_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC1(struct seq_oss_readq *q)
{
	FUNC0(q->midi_sleep,
					 (q->qlen > 0 || q->head == q->tail),
					 q->pre_event_timeout);
}