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
struct TYPE_2__ {int algnlos_en; int synlos_en; int bitlckls_en; int rxsynbad_en; int rxbad_en; int txflt_en; } ;
union cvmx_pcsxx_int_en_reg {scalar_t__ u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(int index)
{
	union cvmx_pcsxx_int_en_reg pcsx_int_en_reg;
	FUNC4(FUNC1(index),
		       FUNC3(FUNC1(index)));
	pcsx_int_en_reg.u64 = 0;
	if (FUNC2(OCTEON_CN56XX)) {
		/* Skipping pcsx_int_en_reg.s.reserved_6_63 */
		pcsx_int_en_reg.s.algnlos_en = 1;
		pcsx_int_en_reg.s.synlos_en = 1;
		pcsx_int_en_reg.s.bitlckls_en = 1;
		pcsx_int_en_reg.s.rxsynbad_en = 1;
		pcsx_int_en_reg.s.rxbad_en = 1;
		pcsx_int_en_reg.s.txflt_en = 1;
	}
	if (FUNC2(OCTEON_CN52XX)) {
		/* Skipping pcsx_int_en_reg.s.reserved_6_63 */
		pcsx_int_en_reg.s.algnlos_en = 1;
		pcsx_int_en_reg.s.synlos_en = 1;
		pcsx_int_en_reg.s.bitlckls_en = 0;	/* Happens if XAUI module is not installed */
		pcsx_int_en_reg.s.rxsynbad_en = 1;
		pcsx_int_en_reg.s.rxbad_en = 1;
		pcsx_int_en_reg.s.txflt_en = 1;
	}
	FUNC4(FUNC0(index), pcsx_int_en_reg.u64);
}