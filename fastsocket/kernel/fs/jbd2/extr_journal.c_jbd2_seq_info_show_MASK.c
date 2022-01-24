#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct jbd2_stats_proc_session* private; } ;
struct jbd2_stats_proc_session {TYPE_3__* stats; TYPE_1__* journal; } ;
struct TYPE_5__ {int rs_wait; int rs_running; int rs_locked; int rs_flushing; int rs_logging; int rs_handle_count; int rs_blocks; int rs_blocks_logged; } ;
struct TYPE_6__ {int ts_tid; TYPE_2__ run; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_average_commit_time; int /*<<< orphan*/  j_max_transaction_buffers; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct jbd2_stats_proc_session *s = seq->private;

	if (v != SEQ_START_TOKEN)
		return 0;
	FUNC2(seq, "%lu transaction, each up to %u blocks\n",
			s->stats->ts_tid,
			s->journal->j_max_transaction_buffers);
	if (s->stats->ts_tid == 0)
		return 0;
	FUNC2(seq, "average: \n  %ums waiting for transaction\n",
	    FUNC1(s->stats->run.rs_wait / s->stats->ts_tid));
	FUNC2(seq, "  %ums running transaction\n",
	    FUNC1(s->stats->run.rs_running / s->stats->ts_tid));
	FUNC2(seq, "  %ums transaction was being locked\n",
	    FUNC1(s->stats->run.rs_locked / s->stats->ts_tid));
	FUNC2(seq, "  %ums flushing data (in ordered mode)\n",
	    FUNC1(s->stats->run.rs_flushing / s->stats->ts_tid));
	FUNC2(seq, "  %ums logging transaction\n",
	    FUNC1(s->stats->run.rs_logging / s->stats->ts_tid));
	FUNC2(seq, "  %lluus average transaction commit time\n",
		   FUNC0(s->journal->j_average_commit_time, 1000));
	FUNC2(seq, "  %lu handles per transaction\n",
	    s->stats->run.rs_handle_count / s->stats->ts_tid);
	FUNC2(seq, "  %lu blocks per transaction\n",
	    s->stats->run.rs_blocks / s->stats->ts_tid);
	FUNC2(seq, "  %lu logged blocks per transaction\n",
	    s->stats->run.rs_blocks_logged / s->stats->ts_tid);
	return 0;
}