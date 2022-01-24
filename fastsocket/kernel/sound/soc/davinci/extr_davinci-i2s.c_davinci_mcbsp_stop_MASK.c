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
typedef  int u32 ;
struct davinci_mcbsp_dev {int dummy; } ;

/* Variables and functions */
 int DAVINCI_MCBSP_SPCR_FRST ; 
 int DAVINCI_MCBSP_SPCR_GRST ; 
 int /*<<< orphan*/  DAVINCI_MCBSP_SPCR_REG ; 
 int DAVINCI_MCBSP_SPCR_RRST ; 
 int DAVINCI_MCBSP_SPCR_XRST ; 
 int FUNC0 (struct davinci_mcbsp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_mcbsp_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcbsp_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct davinci_mcbsp_dev *dev, int playback)
{
	u32 spcr;

	/* Reset transmitter/receiver and sample rate/frame sync generators */
	spcr = FUNC0(dev, DAVINCI_MCBSP_SPCR_REG);
	spcr &= ~(DAVINCI_MCBSP_SPCR_GRST | DAVINCI_MCBSP_SPCR_FRST);
	spcr &= playback ? ~DAVINCI_MCBSP_SPCR_XRST : ~DAVINCI_MCBSP_SPCR_RRST;
	FUNC1(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
	FUNC2(dev, playback);
}