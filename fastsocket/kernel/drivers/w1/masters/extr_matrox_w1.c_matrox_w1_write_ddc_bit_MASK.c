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
typedef  int u8 ;
struct matrox_device {int data_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  MATROX_GET_CONTROL ; 
 int /*<<< orphan*/  MATROX_GET_DATA ; 
 int FUNC0 (struct matrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct matrox_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *data, u8 bit)
{
	u8 ret;
	struct matrox_device *dev = data;

	if (bit)
		bit = 0;
	else
		bit = dev->data_mask;

	ret = FUNC0(dev, MATROX_GET_CONTROL);
	FUNC1(dev, MATROX_GET_CONTROL, ((ret & ~dev->data_mask) | bit));
	FUNC1(dev, MATROX_GET_DATA, 0x00);
}