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
struct pcxhr_mgr {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCXHR_DSP_ISR ; 
 int /*<<< orphan*/  PCXHR_ISR_HI08_CHK ; 
 int /*<<< orphan*/  PCXHR_IT_DOWNLOAD_DSP ; 
 int /*<<< orphan*/  PCXHR_IT_RESET_BOARD_FUNC ; 
 int /*<<< orphan*/  PCXHR_TIMEOUT_DSP ; 
 int FUNC0 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC1 (struct pcxhr_mgr*,struct firmware const*) ; 
 int FUNC2 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct pcxhr_mgr *mgr, const struct firmware *dsp)
{
	int err;
	unsigned char dummy;
	err = FUNC2(mgr, PCXHR_IT_RESET_BOARD_FUNC, 0);
	if (err)
		return err;
	err = FUNC2(mgr, PCXHR_IT_DOWNLOAD_DSP, 0);
	if (err)
		return err;
	err = FUNC1(mgr, dsp);
	if (err)
		return err;
	/* wait for chk bit */
	return FUNC0(mgr, PCXHR_DSP_ISR,
				   PCXHR_ISR_HI08_CHK,
				   PCXHR_ISR_HI08_CHK,
				   PCXHR_TIMEOUT_DSP, &dummy);
}