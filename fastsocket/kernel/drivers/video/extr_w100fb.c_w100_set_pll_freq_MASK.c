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
struct w100fb_par {struct w100_pll_info* pll_table; } ;
struct w100_pll_info {int freq; } ;

/* Variables and functions */
 int FUNC0 (struct w100_pll_info*) ; 

__attribute__((used)) static int FUNC1(struct w100fb_par *par, unsigned int freq)
{
	struct w100_pll_info *pll = par->pll_table;

	do {
		if (freq == pll->freq) {
			return FUNC0(pll);
		}
		pll++;
	} while(pll->freq);
	return 0;
}