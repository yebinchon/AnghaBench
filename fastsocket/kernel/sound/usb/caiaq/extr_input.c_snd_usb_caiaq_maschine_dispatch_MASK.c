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
typedef  int uint16_t ;
struct snd_usb_caiaqdev {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MASCHINE_PADS ; 
 int FUNC1 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_caiaqdev *dev,
					const unsigned char *buf,
					unsigned int len)
{
	unsigned int i, pad_id;
	uint16_t pressure;

	for (i = 0; i < MASCHINE_PADS; i++) {
		pressure = FUNC1(buf[i * 2] << 8 | buf[(i * 2) + 1]);
		pad_id = pressure >> 12;

		FUNC2(dev->input_dev, FUNC0(pad_id), pressure & 0xfff);
	}

	FUNC3(dev->input_dev);
}