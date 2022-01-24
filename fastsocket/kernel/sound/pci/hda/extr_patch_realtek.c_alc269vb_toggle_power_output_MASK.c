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
 int FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec, int power_up)
{
	int val = FUNC0(codec, 0x04);
	if (power_up)
		val |= 1 << 11;
	else
		val &= ~(1 << 11);
	FUNC1(codec, 0x04, val);
}