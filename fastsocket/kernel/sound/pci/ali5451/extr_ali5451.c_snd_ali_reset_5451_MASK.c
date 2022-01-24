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
struct snd_ali {struct pci_dev* pci; struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned int) ; 
 unsigned short FUNC2 (struct snd_ali*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct snd_ali *codec)
{
	struct pci_dev *pci_dev;
	unsigned short wCount, wReg;
	unsigned int   dwVal;
	
	pci_dev = codec->pci_m1533;
	if (pci_dev) {
		FUNC0(pci_dev, 0x7c, &dwVal);
		FUNC1(pci_dev, 0x7c, dwVal | 0x08000000);
		FUNC3(5000);
		FUNC0(pci_dev, 0x7c, &dwVal);
		FUNC1(pci_dev, 0x7c, dwVal & 0xf7ffffff);
		FUNC3(5000);
	}
	
	pci_dev = codec->pci;
	FUNC0(pci_dev, 0x44, &dwVal);
	FUNC1(pci_dev, 0x44, dwVal | 0x000c0000);
	FUNC3(500);
	FUNC0(pci_dev, 0x44, &dwVal);
	FUNC1(pci_dev, 0x44, dwVal & 0xfffbffff);
	FUNC3(5000);
	
	wCount = 200;
	while(wCount--) {
		wReg = FUNC2(codec, 0, AC97_POWERDOWN);
		if ((wReg & 0x000f) == 0x000f)
			return 0;
		FUNC3(5000);
	}

	/* non-fatal if you have a non PM capable codec */
	/* snd_printk(KERN_WARNING "ali5451: reset time out\n"); */
	return 0;
}