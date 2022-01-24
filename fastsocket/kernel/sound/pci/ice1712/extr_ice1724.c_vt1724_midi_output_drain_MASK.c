#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPU_CTRL ; 
 int /*<<< orphan*/  VT1724_IRQ_MPU_TX ; 
 int VT1724_MPU_TX_EMPTY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *s)
{
	struct snd_ice1712 *ice = s->rmidi->private_data;
	unsigned long timeout;

	FUNC5(s, VT1724_IRQ_MPU_TX, 0);
	/* 32 bytes should be transmitted in less than about 12 ms */
	timeout = jiffies + FUNC2(15);
	do {
		if (FUNC1(FUNC0(ice, MPU_CTRL)) & VT1724_MPU_TX_EMPTY)
			break;
		FUNC3(1);
	} while (FUNC4(timeout, jiffies));
}