#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct poll_wqueues {int error; int /*<<< orphan*/  pt; } ;
struct file_operations {unsigned long (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;
struct file {struct file_operations* f_op; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {unsigned long* in; unsigned long* out; unsigned long* ex; unsigned long* res_in; unsigned long* res_out; unsigned long* res_ex; } ;
typedef  TYPE_1__ fd_set_bits ;

/* Variables and functions */
 unsigned long DEFAULT_POLLMASK ; 
 unsigned long POLLEX_SET ; 
 unsigned long POLLIN_SET ; 
 unsigned long POLLOUT_SET ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int __NFDBITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 struct file* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct poll_wqueues*) ; 
 int /*<<< orphan*/  FUNC5 (struct poll_wqueues*) ; 
 int /*<<< orphan*/  FUNC6 (struct poll_wqueues*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long FUNC9 (struct timespec*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct timespec) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 

int FUNC14(int n, fd_set_bits *fds, struct timespec *end_time)
{
	ktime_t expire, *to = NULL;
	struct poll_wqueues table;
	poll_table *wait;
	int retval, i, timed_out = 0;
	unsigned long slack = 0;

	FUNC7();
	retval = FUNC3(n, fds);
	FUNC8();

	if (retval < 0)
		return retval;
	n = retval;

	FUNC5(&table);
	wait = &table.pt;
	if (end_time && !end_time->tv_sec && !end_time->tv_nsec) {
		wait = NULL;
		timed_out = 1;
	}

	if (end_time && !timed_out)
		slack = FUNC9(end_time);

	retval = 0;
	for (;;) {
		unsigned long *rinp, *routp, *rexp, *inp, *outp, *exp;

		inp = fds->in; outp = fds->out; exp = fds->ex;
		rinp = fds->res_in; routp = fds->res_out; rexp = fds->res_ex;

		for (i = 0; i < n; ++rinp, ++routp, ++rexp) {
			unsigned long in, out, ex, all_bits, bit = 1, mask, j;
			unsigned long res_in = 0, res_out = 0, res_ex = 0;
			const struct file_operations *f_op = NULL;
			struct file *file = NULL;

			in = *inp++; out = *outp++; ex = *exp++;
			all_bits = in | out | ex;
			if (all_bits == 0) {
				i += __NFDBITS;
				continue;
			}

			for (j = 0; j < __NFDBITS; ++j, ++i, bit <<= 1) {
				int fput_needed;
				if (i >= n)
					break;
				if (!(bit & all_bits))
					continue;
				file = FUNC1(i, &fput_needed);
				if (file) {
					f_op = file->f_op;
					mask = DEFAULT_POLLMASK;
					if (f_op && f_op->poll) {
						FUNC13(wait, in, out, bit);
						mask = (*f_op->poll)(file, wait);
					}
					FUNC2(file, fput_needed);
					if ((mask & POLLIN_SET) && (in & bit)) {
						res_in |= bit;
						retval++;
						wait = NULL;
					}
					if ((mask & POLLOUT_SET) && (out & bit)) {
						res_out |= bit;
						retval++;
						wait = NULL;
					}
					if ((mask & POLLEX_SET) && (ex & bit)) {
						res_ex |= bit;
						retval++;
						wait = NULL;
					}
				}
			}
			if (res_in)
				*rinp = res_in;
			if (res_out)
				*routp = res_out;
			if (res_ex)
				*rexp = res_ex;
			FUNC0();
		}
		wait = NULL;
		if (retval || timed_out || FUNC10(current))
			break;
		if (table.error) {
			retval = table.error;
			break;
		}

		/*
		 * If this is the first loop and we have a timeout
		 * given, then we convert to ktime_t and set the to
		 * pointer to the expiry value.
		 */
		if (end_time && !to) {
			expire = FUNC12(*end_time);
			to = &expire;
		}

		if (!FUNC6(&table, TASK_INTERRUPTIBLE,
					   to, slack))
			timed_out = 1;
	}

	FUNC4(&table);

	return retval;
}