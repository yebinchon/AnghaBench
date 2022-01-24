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
struct snd_ac97 {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* psc_regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int /*<<< orphan*/  ac97_cmd; TYPE_1__ sr_csr; } ;

/* Variables and functions */
 int MPC52xx_PSC_SR_CMDSEND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__* psc_dma ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_ac97 *ac97,
				unsigned short reg, unsigned short val)
{
	int status;

	FUNC1(&psc_dma->mutex);

	/* Wait for command status zero = ready */
	status = FUNC5(!(FUNC0(&psc_dma->psc_regs->sr_csr.status) &
				MPC52xx_PSC_SR_CMDSEND), 100, 0);
	if (status == 0) {
		FUNC4("timeout on ac97 bus (write)\n");
		goto out;
	}
	/* Write data */
	FUNC3(&psc_dma->psc_regs->ac97_cmd,
			((reg & 0x7f) << 24) | (val << 8));

 out:
	FUNC2(&psc_dma->mutex);
}