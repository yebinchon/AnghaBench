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
struct snd_seq_remove_events {int /*<<< orphan*/  remove_mode; } ;
struct seq_oss_writeq {int /*<<< orphan*/  dp; } ;
typedef  int /*<<< orphan*/  reset ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_REMOVE_EVENTS ; 
 int /*<<< orphan*/  SNDRV_SEQ_REMOVE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_remove_events*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_remove_events*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_oss_writeq*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct seq_oss_writeq *q)
{
	struct snd_seq_remove_events reset;

	FUNC0(&reset, 0, sizeof(reset));
	reset.remove_mode = SNDRV_SEQ_REMOVE_OUTPUT; /* remove all */
	FUNC1(q->dp, SNDRV_SEQ_IOCTL_REMOVE_EVENTS, &reset);

	/* wake up sleepers if any */
	FUNC2(q, 0);
}