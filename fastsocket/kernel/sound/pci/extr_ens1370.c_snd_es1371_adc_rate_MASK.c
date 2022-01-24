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
struct ensoniq {int /*<<< orphan*/  src_mutex; } ;

/* Variables and functions */
 scalar_t__ ES_SMPREG_ADC ; 
 scalar_t__ ES_SMPREG_INT_REGS ; 
 scalar_t__ ES_SMPREG_TRUNC_N ; 
 scalar_t__ ES_SMPREG_VFREQ_FRAC ; 
 scalar_t__ ES_SMPREG_VOL_ADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ensoniq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ensoniq*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct ensoniq * ensoniq, unsigned int rate)
{
	unsigned int n, truncm, freq, result;

	FUNC0(&ensoniq->src_mutex);
	n = rate / 3000;
	if ((1 << n) & ((1 << 15) | (1 << 13) | (1 << 11) | (1 << 9)))
		n--;
	truncm = (21 * n - 1) | 1;
	freq = ((48000UL << 15) / rate) * n;
	result = (48000UL << 15) / (freq / n);
	if (rate >= 24000) {
		if (truncm > 239)
			truncm = 239;
		FUNC3(ensoniq, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
				(((239 - truncm) >> 1) << 9) | (n << 4));
	} else {
		if (truncm > 119)
			truncm = 119;
		FUNC3(ensoniq, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
				0x8000 | (((119 - truncm) >> 1) << 9) | (n << 4));
	}
	FUNC3(ensoniq, ES_SMPREG_ADC + ES_SMPREG_INT_REGS,
			     (FUNC2(ensoniq, ES_SMPREG_ADC +
						  ES_SMPREG_INT_REGS) & 0x00ff) |
			     ((freq >> 5) & 0xfc00));
	FUNC3(ensoniq, ES_SMPREG_ADC + ES_SMPREG_VFREQ_FRAC, freq & 0x7fff);
	FUNC3(ensoniq, ES_SMPREG_VOL_ADC, n << 8);
	FUNC3(ensoniq, ES_SMPREG_VOL_ADC + 1, n << 8);
	FUNC1(&ensoniq->src_mutex);
}