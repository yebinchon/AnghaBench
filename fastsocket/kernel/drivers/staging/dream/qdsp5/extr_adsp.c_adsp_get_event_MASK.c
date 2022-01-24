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
typedef  int uint32_t ;
struct adsp_info {int /*<<< orphan*/  send_irq; int /*<<< orphan*/  read_ctrl; } ;

/* Variables and functions */
 int ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V ; 
 int ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M ; 
 int ADSP_RTOS_READ_CTRL_WORD_CONT_V ; 
 int ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M ; 
 int ADSP_RTOS_READ_CTRL_WORD_FLAG_M ; 
 int ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V ; 
 int ADSP_RTOS_READ_CTRL_WORD_READY_M ; 
 int ADSP_RTOS_READ_CTRL_WORD_READY_V ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EIO ; 
 scalar_t__ MSM_AD5_BASE ; 
 int /*<<< orphan*/  adsp_cmd_lock ; 
 int /*<<< orphan*/  FUNC0 (struct adsp_info*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct adsp_info *info)
{
	uint32_t ctrl_word;
	uint32_t ready;
	void *dsp_addr;
	uint32_t cmd_type;
	int cnt;
	unsigned long flags;
	int rc = 0;

	FUNC4(&adsp_cmd_lock, flags);

	/* Whenever the DSP has a message, it updates this control word
	 * and generates an interrupt.  When we receive the interrupt, we
	 * read this register to find out what ADSP task the command is
	 * comming from.
	 *
	 * The ADSP should *always* be ready on the first call, but the
	 * irq handler calls us in a loop (to handle back-to-back command
	 * processing), so we give the DSP some time to return to the
	 * ready state.  The DSP will not issue another IRQ for events
	 * pending between the first IRQ and the event queue being drained,
	 * unfortunately.
	 */

	for (cnt = 0; cnt < 10; cnt++) {
		ctrl_word = FUNC3(info->read_ctrl);

		if ((ctrl_word & ADSP_RTOS_READ_CTRL_WORD_FLAG_M) ==
		    ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V)
			goto ready;

		FUNC6(10);
	}
	FUNC2("adsp: not ready after 100uS\n");
	rc = -EBUSY;
	goto done;

ready:
	/* Here we check to see if there are pending messages. If there are
	 * none, we siply return -EAGAIN to indicate that there are no more
	 * messages pending.
	 */
	ready = ctrl_word & ADSP_RTOS_READ_CTRL_WORD_READY_M;
	if ((ready != ADSP_RTOS_READ_CTRL_WORD_READY_V) &&
	    (ready != ADSP_RTOS_READ_CTRL_WORD_CONT_V)) {
		rc = -EAGAIN;
		goto done;
	}

	/* DSP says that there are messages waiting for the host to read */

	/* Get the Command Type */
	cmd_type = ctrl_word & ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M;

	/* Get the DSP buffer address */
	dsp_addr = (void *)((ctrl_word &
			     ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M) +
			    (uint32_t)MSM_AD5_BASE);

	/* We can only handle Task-to-Host messages */
	if (cmd_type != ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V) {
		FUNC1("adsp: unknown dsp cmd_type %d\n", cmd_type);
		rc = -EIO;
		goto done;
	}

	FUNC0(info, dsp_addr);

	ctrl_word = FUNC3(info->read_ctrl);
	ctrl_word &= ~ADSP_RTOS_READ_CTRL_WORD_READY_M;

	/* Write ctrl word to the DSP */
	FUNC7(ctrl_word, info->read_ctrl);

	/* Generate an interrupt to the DSP */
	FUNC7(1, info->send_irq);

done:
	FUNC5(&adsp_cmd_lock, flags);
	return rc;
}