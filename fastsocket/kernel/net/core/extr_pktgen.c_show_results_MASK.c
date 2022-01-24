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
struct pktgen_dev {char* result; int sofar; int cur_pkt_size; scalar_t__ errors; int /*<<< orphan*/  idle_acc; int /*<<< orphan*/  started_at; int /*<<< orphan*/  stopped_at; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int __u64 ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,...) ; 

__attribute__((used)) static void FUNC7(struct pktgen_dev *pkt_dev, int nr_frags)
{
	__u64 bps, mbps, pps;
	char *p = pkt_dev->result;
	ktime_t elapsed = FUNC2(pkt_dev->stopped_at,
				    pkt_dev->started_at);
	ktime_t idle = FUNC5(pkt_dev->idle_acc);

	p += FUNC6(p, "OK: %llu(c%llu+d%llu) nsec, %llu (%dbyte,%dfrags)\n",
		     (unsigned long long)FUNC4(elapsed),
		     (unsigned long long)FUNC4(FUNC2(elapsed, idle)),
		     (unsigned long long)FUNC4(idle),
		     (unsigned long long)pkt_dev->sofar,
		     pkt_dev->cur_pkt_size, nr_frags);

	pps = FUNC0(pkt_dev->sofar * NSEC_PER_SEC,
			FUNC3(elapsed));

	bps = pps * 8 * pkt_dev->cur_pkt_size;

	mbps = bps;
	FUNC1(mbps, 1000000);
	p += FUNC6(p, "  %llupps %lluMb/sec (%llubps) errors: %llu",
		     (unsigned long long)pps,
		     (unsigned long long)mbps,
		     (unsigned long long)bps,
		     (unsigned long long)pkt_dev->errors);
}