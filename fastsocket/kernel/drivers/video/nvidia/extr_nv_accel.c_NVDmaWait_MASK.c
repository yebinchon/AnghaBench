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
struct nvidia_par {int dmaFree; int lockup; int dmaPut; int dmaMax; int dmaCurrent; } ;
struct fb_info {struct nvidia_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int) ; 
 int FUNC1 (struct nvidia_par*) ; 
 int SKIPS ; 
 int /*<<< orphan*/  FUNC2 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info, int size)
{
	struct nvidia_par *par = info->par;
	int dmaGet;
	int count = 1000000000, cnt;
	size++;

	while (par->dmaFree < size && --count && !par->lockup) {
		dmaGet = FUNC1(par);

		if (par->dmaPut >= dmaGet) {
			par->dmaFree = par->dmaMax - par->dmaCurrent;
			if (par->dmaFree < size) {
				FUNC0(par, 0x20000000);
				if (dmaGet <= SKIPS) {
					if (par->dmaPut <= SKIPS)
						FUNC2(par, SKIPS + 1);
					cnt = 1000000000;
					do {
						dmaGet = FUNC1(par);
					} while (--cnt && dmaGet <= SKIPS);
					if (!cnt) {
						FUNC4("DMA Get lockup\n");
						par->lockup = 1;
					}
				}
				FUNC2(par, SKIPS);
				par->dmaCurrent = par->dmaPut = SKIPS;
				par->dmaFree = dmaGet - (SKIPS + 1);
			}
		} else
			par->dmaFree = dmaGet - par->dmaCurrent - 1;
	}

	if (!count) {
		FUNC4("nvidiafb: DMA Wait Lockup\n");
		FUNC3(info);
	}
}