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
struct _pll_div {int pre_div; unsigned int n; unsigned int k; } ;

/* Variables and functions */
 int EINVAL ; 
 long long FIXED_PLL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int source, unsigned int target,
		       struct _pll_div *pll_div)
{
	unsigned long long Kpart;
	unsigned int K, Ndiv, Nmod;

	FUNC1("WM8960 PLL: setting %dHz->%dHz\n", source, target);

	/* Scale up target to PLL operating frequency */
	target *= 4;

	Ndiv = target / source;
	if (Ndiv < 6) {
		source >>= 1;
		pll_div->pre_div = 1;
		Ndiv = target / source;
	} else
		pll_div->pre_div = 0;

	if ((Ndiv < 6) || (Ndiv > 12)) {
		FUNC2("WM8960 PLL: Unsupported N=%d\n", Ndiv);
		return -EINVAL;
	}

	pll_div->n = Ndiv;
	Nmod = target % source;
	Kpart = FIXED_PLL_SIZE * (long long)Nmod;

	FUNC0(Kpart, source);

	K = Kpart & 0xFFFFFFFF;

	/* Check if we need to round */
	if ((K % 10) >= 5)
		K += 5;

	/* Move down to proper range now rounding is done */
	K /= 10;

	pll_div->k = K;

	FUNC1("WM8960 PLL: N=%x K=%x pre_div=%d\n",
		 pll_div->n, pll_div->k, pll_div->pre_div);

	return 0;
}