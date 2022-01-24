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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	unsigned int val;

	FUNC1(codec, 0x3000, 0x000c); /* DSP CPU stop */
	FUNC1(codec, 0x880c, 0x0008); /* DDR enter self refresh */
	FUNC1(codec, 0x61c0, 0x11110080); /* Clock control for PLL and CPU */
	FUNC1(codec, 0x6230, 0xfc0d4011); /* Disable Input OP */
	FUNC1(codec, 0x61b4, 0x040a2b03); /* Stop PLL2 */
	FUNC1(codec, 0x61b0, 0x00005b17); /* Stop PLL1 */
	FUNC1(codec, 0x61b8, 0x04133303); /* Stop PLL3 */
	val = FUNC0(codec, 0x6220);
	FUNC1(codec, 0x6220, (val | 0x3000)); /* switch Ringbuffer clock to DBUS clock */
}