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
struct snd_util_memblk {int dummy; } ;
struct TYPE_6__ {scalar_t__ area; } ;
struct TYPE_4__ {scalar_t__ firmware_thread; } ;
struct snd_emu10k1 {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_2__* card_capabilities; scalar_t__ port; int /*<<< orphan*/  page_addr_table; int /*<<< orphan*/  page_ptr_table; TYPE_3__ ptb_pages; TYPE_3__ silent_page; scalar_t__ memhdr; int /*<<< orphan*/ * reserved_page; TYPE_1__ emu1010; } ;
struct TYPE_5__ {scalar_t__ emu_model; scalar_t__ ca0151_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_HANA_DOCK_PWR ; 
 scalar_t__ EMU_MODEL_EMU1010 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu10k1*,struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct snd_emu10k1 *emu)
{
	if (emu->port) {	/* avoid access to already used hardware */
		FUNC10(emu, 0);
		FUNC8(emu);
		FUNC9(emu);
	}
	if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1010) {
		/* Disable 48Volt power to Audio Dock */
		FUNC7(emu, EMU_HANA_DOCK_PWR, 0);
	}
	if (emu->emu1010.firmware_thread)
		FUNC3(emu->emu1010.firmware_thread);
	if (emu->irq >= 0)
		FUNC0(emu->irq, emu);
	/* remove reserved page */
	if (emu->reserved_page) {
		FUNC11(emu,
			(struct snd_util_memblk *)emu->reserved_page);
		emu->reserved_page = NULL;
	}
	if (emu->memhdr)
		FUNC13(emu->memhdr);
	if (emu->silent_page.area)
		FUNC6(&emu->silent_page);
	if (emu->ptb_pages.area)
		FUNC6(&emu->ptb_pages);
	FUNC14(emu->page_ptr_table);
	FUNC14(emu->page_addr_table);
#ifdef CONFIG_PM
	free_pm_buffer(emu);
#endif
	if (emu->port)
		FUNC5(emu->pci);
	if (emu->card_capabilities->ca0151_chip) /* P16V */
		FUNC12(emu);
	FUNC4(emu->pci);
	FUNC2(emu);
	return 0;
}