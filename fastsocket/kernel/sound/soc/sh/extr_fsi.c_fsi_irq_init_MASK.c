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
typedef  int /*<<< orphan*/  u32 ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_CTL ; 
 int /*<<< orphan*/  DOFF_CTL ; 
 int /*<<< orphan*/  FIFO_CLR ; 
 int /*<<< orphan*/  INT_ST ; 
 int /*<<< orphan*/  IRQ_HALF ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fsi_priv *fsi, int is_play)
{
	u32 data;
	u32 ctrl;

	data = FUNC2(fsi, is_play);
	ctrl = is_play ? DOFF_CTL : DIFF_CTL;

	/* set IMSK */
	FUNC0(fsi, is_play);

	/* set interrupt generation factor */
	FUNC4(fsi, ctrl, IRQ_HALF);

	/* clear FIFO */
	FUNC3(fsi, ctrl, FIFO_CLR, FIFO_CLR);

	/* clear interrupt factor */
	FUNC1(INT_ST, data, 0);
}