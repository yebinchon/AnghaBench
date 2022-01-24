#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct whci_card {struct umc_dev** devs; TYPE_3__* pci; scalar_t__ uwbbase; } ;
struct TYPE_4__ {int start; int end; TYPE_2__* parent; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct umc_dev {int bar; int /*<<< orphan*/  irq; TYPE_1__ resource; int /*<<< orphan*/  dev; int /*<<< orphan*/  cap_id; int /*<<< orphan*/  version; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; TYPE_2__* resource; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct umc_dev*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (TYPE_3__*,int) ; 
 struct umc_dev* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct umc_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct whci_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct whci_card *card, int n)
{
	struct umc_dev *umc;
	u64 capdata;
	int bar, err;

	umc = FUNC10(&card->pci->dev, n);
	if (umc == NULL)
		return -ENOMEM;

	capdata = FUNC8(card->uwbbase + FUNC0(n));

	bar = FUNC1(capdata) << 1;

	capdata = FUNC12(card, capdata);
	/* Capability 0 is the radio controller. It's size is 32
	 * bytes (WHCI0.95[2.3, T2-9]). */
	umc->version         = FUNC5(capdata);
	umc->cap_id          = n == 0 ? 0 : FUNC2(capdata);
	umc->bar	     = bar;
	umc->resource.start  = FUNC9(card->pci, bar)
		+ FUNC3(capdata);
	umc->resource.end    = umc->resource.start
		+ (n == 0 ? 0x20 : FUNC4(capdata)) - 1;
	umc->resource.name   = FUNC6(&umc->dev);
	umc->resource.flags  = card->pci->resource[bar].flags;
	umc->resource.parent = &card->pci->resource[bar];
	umc->irq             = card->pci->irq;

	err = FUNC11(umc);
	if (err < 0)
		goto error;
	card->devs[n] = umc;
	return 0;

error:
	FUNC7(umc);
	return err;
}