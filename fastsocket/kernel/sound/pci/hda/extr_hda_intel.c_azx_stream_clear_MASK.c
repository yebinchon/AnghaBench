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
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CTL ; 
 int SD_CTL_DMA_START ; 
 int SD_INT_MASK ; 
 int /*<<< orphan*/  SD_STS ; 
 int FUNC0 (struct azx_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct azx *chip, struct azx_dev *azx_dev)
{
	FUNC1(azx_dev, SD_CTL, FUNC0(azx_dev, SD_CTL) &
		      ~(SD_CTL_DMA_START | SD_INT_MASK));
	FUNC1(azx_dev, SD_STS, SD_INT_MASK); /* to be sure */
}