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
typedef  size_t u32 ;
struct whcrc {int /*<<< orphan*/  irq_lock; scalar_t__ rc_base; int /*<<< orphan*/  cmd_dma_buf; int /*<<< orphan*/  cmd_buf; int /*<<< orphan*/  cmd_wq; TYPE_1__* umc_dev; } ;
struct uwb_rccb {int dummy; } ;
struct uwb_rc {struct whcrc* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ URCCMD ; 
 scalar_t__ URCCMDADDR ; 
 size_t URCCMD_ACTIVE ; 
 size_t URCCMD_EARV ; 
 size_t URCCMD_IWR ; 
 size_t URCCMD_SIZE_MASK ; 
 scalar_t__ URCSTS ; 
 int URCSTS_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct uwb_rccb const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct uwb_rc *uwb_rc,
	      const struct uwb_rccb *cmd, size_t cmd_size)
{
	int result = 0;
	struct whcrc *whcrc = uwb_rc->priv;
	struct device *dev = &whcrc->umc_dev->dev;
	u32 urccmd;

	if (cmd_size >= 4096)
		return -EINVAL;

	/*
	 * If the URC is halted, then the hardware has reset itself.
	 * Attempt to recover by restarting the device and then return
	 * an error as it's likely that the current command isn't
	 * valid for a newly started RC.
	 */
	if (FUNC1(whcrc->rc_base + URCSTS) & URCSTS_HALTED) {
		FUNC0(dev, "requesting reset of halted radio controller\n");
		FUNC7(uwb_rc);
		return -EIO;
	}

	result = FUNC8(whcrc->cmd_wq,
		!(FUNC1(whcrc->rc_base + URCCMD) & URCCMD_ACTIVE), HZ/2);
	if (result == 0) {
		FUNC0(dev, "device is not ready to execute commands\n");
		return -ETIMEDOUT;
	}

	FUNC4(whcrc->cmd_buf, cmd, cmd_size);
	FUNC3(whcrc->cmd_dma_buf, whcrc->rc_base + URCCMDADDR);

	FUNC5(&whcrc->irq_lock);
	urccmd = FUNC1(whcrc->rc_base + URCCMD);
	urccmd &= ~(URCCMD_EARV | URCCMD_SIZE_MASK);
	FUNC2(urccmd | URCCMD_ACTIVE | URCCMD_IWR | cmd_size,
		  whcrc->rc_base + URCCMD);
	FUNC6(&whcrc->irq_lock);

	return 0;
}