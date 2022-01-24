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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8960_ADDCTL1 ; 
 int /*<<< orphan*/  WM8960_CLOCK1 ; 
 int /*<<< orphan*/  WM8960_CLOCK2 ; 
#define  WM8960_DACDIV 133 
#define  WM8960_DCLKDIV 132 
#define  WM8960_OPCLKDIV 131 
 int /*<<< orphan*/  WM8960_PLL1 ; 
#define  WM8960_SYSCLKDIV 130 
#define  WM8960_SYSCLKSEL 129 
#define  WM8960_TOCLKSEL 128 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		int div_id, int div)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	u16 reg;

	switch (div_id) {
	case WM8960_SYSCLKSEL:
		reg = FUNC0(codec, WM8960_CLOCK1) & 0x1fe;
		FUNC1(codec, WM8960_CLOCK1, reg | div);
		break;
	case WM8960_SYSCLKDIV:
		reg = FUNC0(codec, WM8960_CLOCK1) & 0x1f9;
		FUNC1(codec, WM8960_CLOCK1, reg | div);
		break;
	case WM8960_DACDIV:
		reg = FUNC0(codec, WM8960_CLOCK1) & 0x1c7;
		FUNC1(codec, WM8960_CLOCK1, reg | div);
		break;
	case WM8960_OPCLKDIV:
		reg = FUNC0(codec, WM8960_PLL1) & 0x03f;
		FUNC1(codec, WM8960_PLL1, reg | div);
		break;
	case WM8960_DCLKDIV:
		reg = FUNC0(codec, WM8960_CLOCK2) & 0x03f;
		FUNC1(codec, WM8960_CLOCK2, reg | div);
		break;
	case WM8960_TOCLKSEL:
		reg = FUNC0(codec, WM8960_ADDCTL1) & 0x1fd;
		FUNC1(codec, WM8960_ADDCTL1, reg | div);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}