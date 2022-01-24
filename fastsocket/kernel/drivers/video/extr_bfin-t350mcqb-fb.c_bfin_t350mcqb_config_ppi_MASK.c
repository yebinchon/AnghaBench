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
struct bfin_t350mcqbfb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ H_ACTPIX ; 
 int /*<<< orphan*/  H_START ; 
 int PPI_PACK_EN ; 
 int PPI_POLS_1 ; 
 int PPI_PORT_CFG_01 ; 
 int PPI_TX_MODE ; 
 int PPI_XFER_TYPE_11 ; 
 int /*<<< orphan*/  V_LINES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bfin_t350mcqbfb_info *fbi)
{
	FUNC2(H_START);
	FUNC1(H_ACTPIX-1);
	FUNC3(V_LINES);

	FUNC0(PPI_TX_MODE |	   /* output mode , PORT_DIR */
				PPI_XFER_TYPE_11 | /* sync mode XFR_TYPE */
				PPI_PORT_CFG_01 |  /* two frame sync PORT_CFG */
				PPI_PACK_EN |	   /* packing enabled PACK_EN */
				PPI_POLS_1);	   /* faling edge syncs POLS */
}