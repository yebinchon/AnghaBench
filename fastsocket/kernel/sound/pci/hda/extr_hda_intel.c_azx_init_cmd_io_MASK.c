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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {scalar_t__ addr; int /*<<< orphan*/  cmds; scalar_t__ rp; scalar_t__ wp; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {scalar_t__ area; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; int /*<<< orphan*/ * buf; } ;
struct azx {int driver_caps; int /*<<< orphan*/  reg_lock; TYPE_3__ rirb; TYPE_2__ rb; TYPE_1__ corb; } ;

/* Variables and functions */
 int AZX_DCAPS_CTX_WORKAROUND ; 
 int /*<<< orphan*/  CORBCTL ; 
 int /*<<< orphan*/  CORBLBASE ; 
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  CORBSIZE ; 
 int /*<<< orphan*/  CORBUBASE ; 
 int /*<<< orphan*/  CORBWP ; 
 int ICH6_CORBCTL_RUN ; 
 int ICH6_CORBRP_RST ; 
 int ICH6_RBCTL_DMA_EN ; 
 int ICH6_RBCTL_IRQ_EN ; 
 int ICH6_RIRBWP_RST ; 
 int /*<<< orphan*/  RINTCNT ; 
 int /*<<< orphan*/  RIRBCTL ; 
 int /*<<< orphan*/  RIRBLBASE ; 
 int /*<<< orphan*/  RIRBSIZE ; 
 int /*<<< orphan*/  RIRBUBASE ; 
 int /*<<< orphan*/  RIRBWP ; 
 int /*<<< orphan*/  FUNC0 (struct azx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct azx *chip)
{
	FUNC4(&chip->reg_lock);
	/* CORB set up */
	chip->corb.addr = chip->rb.addr;
	chip->corb.buf = (u32 *)chip->rb.area;
	FUNC1(chip, CORBLBASE, (u32)chip->corb.addr);
	FUNC1(chip, CORBUBASE, FUNC6(chip->corb.addr));

	/* set the corb size to 256 entries (ULI requires explicitly) */
	FUNC0(chip, CORBSIZE, 0x02);
	/* set the corb write pointer to 0 */
	FUNC2(chip, CORBWP, 0);
	/* reset the corb hw read pointer */
	FUNC2(chip, CORBRP, ICH6_CORBRP_RST);
	/* enable corb dma */
	FUNC0(chip, CORBCTL, ICH6_CORBCTL_RUN);

	/* RIRB set up */
	chip->rirb.addr = chip->rb.addr + 2048;
	chip->rirb.buf = (u32 *)(chip->rb.area + 2048);
	chip->rirb.wp = chip->rirb.rp = 0;
	FUNC3(chip->rirb.cmds, 0, sizeof(chip->rirb.cmds));
	FUNC1(chip, RIRBLBASE, (u32)chip->rirb.addr);
	FUNC1(chip, RIRBUBASE, FUNC6(chip->rirb.addr));

	/* set the rirb size to 256 entries (ULI requires explicitly) */
	FUNC0(chip, RIRBSIZE, 0x02);
	/* reset the rirb hw write pointer */
	FUNC2(chip, RIRBWP, ICH6_RIRBWP_RST);
	/* set N=1, get RIRB response interrupt for new entry */
	if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
		FUNC2(chip, RINTCNT, 0xc0);
	else
		FUNC2(chip, RINTCNT, 1);
	/* enable rirb dma and response irq */
	FUNC0(chip, RIRBCTL, ICH6_RBCTL_DMA_EN | ICH6_RBCTL_IRQ_EN);
	FUNC5(&chip->reg_lock);
}