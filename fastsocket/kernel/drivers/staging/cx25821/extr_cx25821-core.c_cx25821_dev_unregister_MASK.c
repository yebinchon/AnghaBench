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
struct cx25821_dev {int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  refcount; int /*<<< orphan*/  pci; int /*<<< orphan*/  base_io_addr; } ;

/* Variables and functions */
 int AUDIO_UPSTREAM_SRAM_CHANNEL_B ; 
 int VID_CHANNEL_NUM ; 
 int VID_UPSTREAM_SRAM_CHANNEL_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx25821_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct cx25821_dev *dev)
{
	int i;

	if (!dev->base_io_addr)
		return;

	FUNC2(dev);
	FUNC3(dev);
	FUNC1(dev);

	FUNC9(dev->base_io_addr, FUNC8(dev->pci, 0));

	if (!FUNC0(&dev->refcount))
		return;

	for (i = 0; i < VID_CHANNEL_NUM; i++)
		FUNC6(dev, i);

	for (i = VID_UPSTREAM_SRAM_CHANNEL_I;
	     i <= AUDIO_UPSTREAM_SRAM_CHANNEL_B; i++) {
		FUNC6(dev, i);
	}

	FUNC7(dev);

	FUNC4(&dev->i2c_bus[0]);
	FUNC5(dev);
}