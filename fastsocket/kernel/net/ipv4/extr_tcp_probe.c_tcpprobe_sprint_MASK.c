#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct tcp_log {int /*<<< orphan*/  srtt; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  ssthresh; int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  length; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  sport; int /*<<< orphan*/  saddr; int /*<<< orphan*/  tstamp; } ;
struct TYPE_2__ {int tail; int /*<<< orphan*/  start; struct tcp_log* log; } ;

/* Variables and functions */
 int bufsize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tcp_probe ; 

__attribute__((used)) static int FUNC4(char *tbuf, int n)
{
	const struct tcp_log *p
		= tcp_probe.log + tcp_probe.tail % bufsize;
	struct timespec tv
		= FUNC1(FUNC0(p->tstamp, tcp_probe.start));

	return FUNC3(tbuf, n,
			"%lu.%09lu %pI4:%u %pI4:%u %d %#x %#x %u %u %u %u\n",
			(unsigned long) tv.tv_sec,
			(unsigned long) tv.tv_nsec,
			&p->saddr, FUNC2(p->sport),
			&p->daddr, FUNC2(p->dport),
			p->length, p->snd_nxt, p->snd_una,
			p->snd_cwnd, p->ssthresh, p->snd_wnd, p->srtt);
}