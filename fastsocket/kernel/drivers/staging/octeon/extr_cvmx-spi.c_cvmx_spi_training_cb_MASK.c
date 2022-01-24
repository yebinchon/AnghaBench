#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int clr_boot; } ;
union cvmx_spxx_trn4_ctl {void* u64; TYPE_2__ s; } ;
struct TYPE_7__ {scalar_t__ srxtrn; } ;
union cvmx_spxx_clk_stat {TYPE_3__ s; void* u64; } ;
struct TYPE_5__ {int clkdly; int statrcv; int sndtrn; int drptrn; int rcvtrn; int srxdlck; scalar_t__ statdrv; scalar_t__ runbist; scalar_t__ seetrn; } ;
union cvmx_spxx_clk_ctl {void* u64; TYPE_1__ s; } ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  cvmx_spi_mode_t ;
struct TYPE_8__ {int cpu_clock_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 unsigned long long FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 

int FUNC9(int interface, cvmx_spi_mode_t mode, int timeout)
{
	union cvmx_spxx_trn4_ctl spxx_trn4_ctl;
	union cvmx_spxx_clk_stat stat;
	uint64_t MS = FUNC6()->cpu_clock_hz / 1000;
	uint64_t timeout_time = FUNC4() + 1000ull * MS * timeout;
	int rx_training_needed;

	/* SRX0 & STX0 Inf0 Links are configured - begin training */
	union cvmx_spxx_clk_ctl spxx_clk_ctl;
	spxx_clk_ctl.u64 = 0;
	spxx_clk_ctl.s.seetrn = 0;
	spxx_clk_ctl.s.clkdly = 0x10;
	spxx_clk_ctl.s.runbist = 0;
	spxx_clk_ctl.s.statdrv = 0;
	/* This should always be on the opposite edge as statdrv */
	spxx_clk_ctl.s.statrcv = 1;
	spxx_clk_ctl.s.sndtrn = 1;
	spxx_clk_ctl.s.drptrn = 1;
	spxx_clk_ctl.s.rcvtrn = 1;
	spxx_clk_ctl.s.srxdlck = 1;
	FUNC8(FUNC0(interface), spxx_clk_ctl.u64);
	FUNC7(1000 * MS);

	/* SRX0 clear the boot bit */
	spxx_trn4_ctl.u64 = FUNC5(FUNC2(interface));
	spxx_trn4_ctl.s.clr_boot = 1;
	FUNC8(FUNC2(interface), spxx_trn4_ctl.u64);

	/* Wait for the training sequence to complete */
	FUNC3("SPI%d: Waiting for training\n", interface);
	FUNC7(1000 * MS);
	/* Wait a really long time here */
	timeout_time = FUNC4() + 1000ull * MS * 600;
	/*
	 * The HRM says we must wait for 34 + 16 * MAXDIST training sequences.
	 * We'll be pessimistic and wait for a lot more.
	 */
	rx_training_needed = 500;
	do {
		stat.u64 = FUNC5(FUNC1(interface));
		if (stat.s.srxtrn && rx_training_needed) {
			rx_training_needed--;
			FUNC8(FUNC1(interface), stat.u64);
			stat.s.srxtrn = 0;
		}
		if (FUNC4() > timeout_time) {
			FUNC3("SPI%d: Timeout\n", interface);
			return -1;
		}
	} while (stat.s.srxtrn == 0);

	return 0;
}