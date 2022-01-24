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
struct azx_dev {scalar_t__* posbuf; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CTL ; 
 unsigned char SD_CTL_STREAM_RESET ; 
 unsigned char FUNC0 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct azx *chip, struct azx_dev *azx_dev)
{
	unsigned char val;
	int timeout;

	FUNC2(chip, azx_dev);

	FUNC1(azx_dev, SD_CTL, FUNC0(azx_dev, SD_CTL) |
		      SD_CTL_STREAM_RESET);
	FUNC3(3);
	timeout = 300;
	while (!((val = FUNC0(azx_dev, SD_CTL)) & SD_CTL_STREAM_RESET) &&
	       --timeout)
		;
	val &= ~SD_CTL_STREAM_RESET;
	FUNC1(azx_dev, SD_CTL, val);
	FUNC3(3);

	timeout = 300;
	/* waiting for hardware to report that the stream is out of reset */
	while (((val = FUNC0(azx_dev, SD_CTL)) & SD_CTL_STREAM_RESET) &&
	       --timeout)
		;

	/* reset first position - may not be synced with hw at this time */
	*azx_dev->posbuf = 0;
}