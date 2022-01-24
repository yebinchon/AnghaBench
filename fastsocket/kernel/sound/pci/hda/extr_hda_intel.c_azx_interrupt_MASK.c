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
typedef  int u8 ;
typedef  int u32 ;
struct azx_dev {int sd_int_sta_mask; int irq_pending; int /*<<< orphan*/  substream; int /*<<< orphan*/  running; } ;
struct azx {int num_streams; int driver_caps; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  irq_pending_work; TYPE_4__* bus; struct azx_dev* azx_dev; scalar_t__ disabled; TYPE_3__* pci; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {scalar_t__ workq; } ;
struct TYPE_5__ {scalar_t__ runtime_status; } ;
struct TYPE_6__ {TYPE_1__ power; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int AZX_DCAPS_RIRB_PRE_DELAY ; 
 int /*<<< orphan*/  INTSTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int RIRB_INT_MASK ; 
 int RIRB_INT_RESPONSE ; 
 scalar_t__ RPM_ACTIVE ; 
 int SD_INT_COMPLETE ; 
 int /*<<< orphan*/  SD_INT_MASK ; 
 int /*<<< orphan*/  SD_STS ; 
 int /*<<< orphan*/  STATESTS ; 
 int FUNC0 (struct azx*,struct azx_dev*) ; 
 int FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct azx_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct azx*) ; 
 int /*<<< orphan*/  FUNC6 (struct azx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct azx *chip = dev_id;
	struct azx_dev *azx_dev;
	u32 status;
	u8 sd_status;
	int i, ok;

#ifdef CONFIG_PM_RUNTIME
	if (chip->pci->dev.power.runtime_status != RPM_ACTIVE)
		return IRQ_NONE;
#endif

	FUNC9(&chip->reg_lock);

	if (chip->disabled) {
		FUNC10(&chip->reg_lock);
		return IRQ_NONE;
	}

	status = FUNC2(chip, INTSTS);
	if (status == 0) {
		FUNC10(&chip->reg_lock);
		return IRQ_NONE;
	}
	
	for (i = 0; i < chip->num_streams; i++) {
		azx_dev = &chip->azx_dev[i];
		if (status & azx_dev->sd_int_sta_mask) {
			sd_status = FUNC3(azx_dev, SD_STS);
			FUNC4(azx_dev, SD_STS, SD_INT_MASK);
			if (!azx_dev->substream || !azx_dev->running ||
			    !(sd_status & SD_INT_COMPLETE))
				continue;
			/* check whether this IRQ is really acceptable */
			ok = FUNC0(chip, azx_dev);
			if (ok == 1) {
				azx_dev->irq_pending = 0;
				FUNC10(&chip->reg_lock);
				FUNC8(azx_dev->substream);
				FUNC9(&chip->reg_lock);
			} else if (ok == 0 && chip->bus && chip->bus->workq) {
				/* bogus IRQ, process it later */
				azx_dev->irq_pending = 1;
				FUNC7(chip->bus->workq,
					   &chip->irq_pending_work);
			}
		}
	}

	/* clear rirb int */
	status = FUNC1(chip, RIRBSTS);
	if (status & RIRB_INT_MASK) {
		if (status & RIRB_INT_RESPONSE) {
			if (chip->driver_caps & AZX_DCAPS_RIRB_PRE_DELAY)
				FUNC11(80);
			FUNC5(chip);
		}
		FUNC6(chip, RIRBSTS, RIRB_INT_MASK);
	}

#if 0
	/* clear state status int */
	if (azx_readb(chip, STATESTS) & 0x04)
		azx_writeb(chip, STATESTS, 0x04);
#endif
	FUNC10(&chip->reg_lock);
	
	return IRQ_HANDLED;
}