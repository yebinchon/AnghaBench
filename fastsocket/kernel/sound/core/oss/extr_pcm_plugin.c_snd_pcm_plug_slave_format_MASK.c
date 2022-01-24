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
struct snd_mask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_MU_LAW 128 
 int* preferred_formats ; 
 scalar_t__ FUNC1 (struct snd_mask*,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mask*,int) ; 

int FUNC7(int format, struct snd_mask *format_mask)
{
	int i;

	if (FUNC1(format_mask, format))
		return format;
	if (! FUNC6(format_mask, format))
		return -EINVAL;
	if (FUNC3(format)) {
		unsigned int width = FUNC5(format);
		int unsignd = FUNC4(format) > 0;
		int big = FUNC2(format) > 0;
		unsigned int badness, best = -1;
		int best_format = -1;
		for (i = 0; i < FUNC0(preferred_formats); i++) {
			int f = preferred_formats[i];
			unsigned int w;
			if (!FUNC1(format_mask, f))
				continue;
			w = FUNC5(f);
			if (w >= width)
				badness = w - width;
			else
				badness = width - w + 32;
			badness += FUNC4(f) != unsignd;
			badness += FUNC2(f) != big;
			if (badness < best) {
				best_format = f;
				best = badness;
			}
		}
		return best_format >= 0 ? best_format : -EINVAL;
	} else {
		switch (format) {
		case SNDRV_PCM_FORMAT_MU_LAW:
			for (i = 0; i < FUNC0(preferred_formats); ++i) {
				int format1 = preferred_formats[i];
				if (FUNC1(format_mask, format1))
					return format1;
			}
		default:
			return -EINVAL;
		}
	}
}