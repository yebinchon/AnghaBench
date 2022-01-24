#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct azx_dev {unsigned int stream_tag; unsigned int bufsize; TYPE_1__ bdl; scalar_t__ frags; scalar_t__ format_val; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct azx {scalar_t__* position_fix; TYPE_2__ posbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLBASE ; 
 unsigned int ICH6_DPLBASE_ENABLE ; 
 scalar_t__ POS_FIX_LPIB ; 
 int /*<<< orphan*/  SD_BDLPL ; 
 int /*<<< orphan*/  SD_BDLPU ; 
 int /*<<< orphan*/  SD_CBL ; 
 int /*<<< orphan*/  SD_CTL ; 
 unsigned int SD_CTL_STREAM_TAG_MASK ; 
 unsigned int SD_CTL_STREAM_TAG_SHIFT ; 
 unsigned int SD_CTL_TRAFFIC_PRIO ; 
 int /*<<< orphan*/  SD_FORMAT ; 
 unsigned int SD_INT_MASK ; 
 int /*<<< orphan*/  SD_LVI ; 
 unsigned int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct azx_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*) ; 
 int /*<<< orphan*/  FUNC5 (struct azx*,struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct azx*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct azx *chip, struct azx_dev *azx_dev)
{
	unsigned int val;
	/* make sure the run bit is zero for SD */
	FUNC5(chip, azx_dev);
	/* program the stream_tag */
	val = FUNC1(azx_dev, SD_CTL);
	val = (val & ~SD_CTL_STREAM_TAG_MASK) |
		(azx_dev->stream_tag << SD_CTL_STREAM_TAG_SHIFT);
	if (!FUNC4(chip))
		val |= SD_CTL_TRAFFIC_PRIO;
	FUNC2(azx_dev, SD_CTL, val);

	/* program the length of samples in cyclic buffer */
	FUNC2(azx_dev, SD_CBL, azx_dev->bufsize);

	/* program the stream format */
	/* this value needs to be the same as the one programmed */
	FUNC3(azx_dev, SD_FORMAT, azx_dev->format_val);

	/* program the stream LVI (last valid index) of the BDL */
	FUNC3(azx_dev, SD_LVI, azx_dev->frags - 1);

	/* program the BDL address */
	/* lower BDL address */
	FUNC2(azx_dev, SD_BDLPL, (u32)azx_dev->bdl.addr);
	/* upper BDL address */
	FUNC2(azx_dev, SD_BDLPU, FUNC7(azx_dev->bdl.addr));

	/* enable the position buffer */
	if (chip->position_fix[0] != POS_FIX_LPIB ||
	    chip->position_fix[1] != POS_FIX_LPIB) {
		if (!(FUNC0(chip, DPLBASE) & ICH6_DPLBASE_ENABLE))
			FUNC6(chip, DPLBASE,
				(u32)chip->posbuf.addr | ICH6_DPLBASE_ENABLE);
	}

	/* set the interrupt enable bits in the descriptor control register */
	FUNC2(azx_dev, SD_CTL,
		      FUNC1(azx_dev, SD_CTL) | SD_INT_MASK);

	return 0;
}