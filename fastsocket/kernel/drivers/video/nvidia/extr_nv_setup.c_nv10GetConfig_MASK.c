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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct nvidia_par {int Chipset; int RamAmountKBytes; int CrystalFreqKHz; int MinVClockFreqKHz; int MaxVClockFreqKHz; scalar_t__ twoStagePLL; int /*<<< orphan*/ * CURSOR; int /*<<< orphan*/  PEXTDEV; scalar_t__ twoHeads; int /*<<< orphan*/  PFB; int /*<<< orphan*/  PMC; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC6(struct nvidia_par *par)
{
	struct pci_dev *dev;
	u32 implementation = par->Chipset & 0x0ff0;

#ifdef __BIG_ENDIAN
	/* turn on big endian register access */
	if (!(NV_RD32(par->PMC, 0x0004) & 0x01000001)) {
		NV_WR32(par->PMC, 0x0004, 0x01000001);
		mb();
	}
#endif

	dev = FUNC4(0, 1);
	if ((par->Chipset & 0xffff) == 0x01a0) {
		u32 amt;

		FUNC5(dev, 0x7c, &amt);
		par->RamAmountKBytes = (((amt >> 6) & 31) + 1) * 1024;
	} else if ((par->Chipset & 0xffff) == 0x01f0) {
		u32 amt;

		FUNC5(dev, 0x84, &amt);
		par->RamAmountKBytes = (((amt >> 4) & 127) + 1) * 1024;
	} else {
		par->RamAmountKBytes =
		    (FUNC0(par->PFB, 0x020C) & 0xFFF00000) >> 10;
	}
	FUNC3(dev);

	par->CrystalFreqKHz = (FUNC0(par->PEXTDEV, 0x0000) & (1 << 6)) ?
	    14318 : 13500;

	if (par->twoHeads && (implementation != 0x0110)) {
		if (FUNC0(par->PEXTDEV, 0x0000) & (1 << 22))
			par->CrystalFreqKHz = 27000;
	}

	par->CURSOR = NULL;	/* can't set this here */
	par->MinVClockFreqKHz = 12000;
	par->MaxVClockFreqKHz = par->twoStagePLL ? 400000 : 350000;
}