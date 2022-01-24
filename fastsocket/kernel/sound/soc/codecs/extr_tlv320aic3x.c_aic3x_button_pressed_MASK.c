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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC3X_HEADSET_DETECT_CTRL_B ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ,int*) ; 

int FUNC1(struct snd_soc_codec *codec)
{
	u8 val;
	FUNC0(codec, AIC3X_HEADSET_DETECT_CTRL_B, &val);
	return (val >> 5) & 1;
}