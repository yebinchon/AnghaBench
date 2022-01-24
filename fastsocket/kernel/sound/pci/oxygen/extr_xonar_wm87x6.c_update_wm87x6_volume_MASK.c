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
typedef  size_t u8 ;
struct xonar_wm87x6 {int* wm8766_regs; } ;
struct oxygen {int* dac_volume; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
#define  WM8766_LDA1 133 
#define  WM8766_LDA2 132 
#define  WM8766_LDA3 131 
 size_t const WM8766_MASTDA ; 
#define  WM8766_RDA1 130 
#define  WM8766_RDA2 129 
#define  WM8766_RDA3 128 
 int WM8766_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,size_t const,int) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	static const u8 wm8766_regs[6] = {
		WM8766_LDA1, WM8766_RDA1,
		WM8766_LDA2, WM8766_RDA2,
		WM8766_LDA3, WM8766_RDA3,
	};
	struct xonar_wm87x6 *data = chip->model_data;
	unsigned int i;
	u8 to_change;

	FUNC0(chip);
	if (chip->dac_volume[2] == chip->dac_volume[3] &&
	    chip->dac_volume[2] == chip->dac_volume[4] &&
	    chip->dac_volume[2] == chip->dac_volume[5] &&
	    chip->dac_volume[2] == chip->dac_volume[6] &&
	    chip->dac_volume[2] == chip->dac_volume[7]) {
		to_change = 0;
		for (i = 0; i < 6; ++i)
			if (chip->dac_volume[2] !=
			    data->wm8766_regs[wm8766_regs[i]])
				to_change = 1;
		if (to_change) {
			FUNC1(chip, WM8766_MASTDA,
				     chip->dac_volume[2] | WM8766_UPDATE);
			for (i = 0; i < 6; ++i)
				data->wm8766_regs[wm8766_regs[i]] =
					chip->dac_volume[2];
		}
	} else {
		to_change = 0;
		for (i = 0; i < 6; ++i)
			to_change |= (chip->dac_volume[2 + i] !=
				      data->wm8766_regs[wm8766_regs[i]]) << i;
		for (i = 0; i < 6; ++i)
			if (to_change & (1 << i))
				FUNC1(chip, wm8766_regs[i],
					     chip->dac_volume[2 + i] |
					     ((to_change & (0x3e << i))
					      ? 0 : WM8766_UPDATE));
	}
}