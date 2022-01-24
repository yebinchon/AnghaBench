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
struct trn_conf {int /*<<< orphan*/  vm_pgt_phys; int /*<<< orphan*/  member_0; } ;
struct hw {int model; } ;
struct daio_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;
struct dac_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;
struct card_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  vm_pgt_phys; int /*<<< orphan*/  rsr; } ;
struct adc_conf {scalar_t__ mic20db; int /*<<< orphan*/  input; int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_LINEIN ; 
#define  CTSB055X 130 
#define  CTSB073X 129 
#define  CTUAA 128 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  GCTL_DBP ; 
 int /*<<< orphan*/  GCTL_EAC ; 
 int /*<<< orphan*/  GCTL_ET ; 
 int /*<<< orphan*/  GCTL_FBP ; 
 int /*<<< orphan*/  GCTL_TBP ; 
 int /*<<< orphan*/  GIE ; 
 int /*<<< orphan*/  GPIOCTL ; 
 int /*<<< orphan*/  SRCIP ; 
 int /*<<< orphan*/  SRCMCTL ; 
 int FUNC0 (struct hw*,struct adc_conf*) ; 
 int FUNC1 (struct hw*) ; 
 int FUNC2 (struct hw*) ; 
 int FUNC3 (struct hw*,struct dac_conf*) ; 
 int FUNC4 (struct hw*,struct daio_conf*) ; 
 int FUNC5 (struct hw*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hw*,struct trn_conf*) ; 
 int /*<<< orphan*/  FUNC8 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct hw *hw, struct card_conf *info)
{
	int err;
	unsigned int gctl;
	u32 data;
	struct dac_conf dac_info = {0};
	struct adc_conf adc_info = {0};
	struct daio_conf daio_info = {0};
	struct trn_conf trn_info = {0};

	/* Get PCI io port base address and do Hendrix switch if needed. */
	err = FUNC2(hw);
	if (err)
		return err;

	/* PLL init */
	err = FUNC5(hw, info->rsr);
	if (err < 0)
		return err;

	/* kick off auto-init */
	err = FUNC1(hw);
	if (err < 0)
		return err;

	/* Enable audio ring */
	gctl = FUNC6(hw, GCTL);
	FUNC10(&gctl, GCTL_EAC, 1);
	FUNC10(&gctl, GCTL_DBP, 1);
	FUNC10(&gctl, GCTL_TBP, 1);
	FUNC10(&gctl, GCTL_FBP, 1);
	FUNC10(&gctl, GCTL_ET, 1);
	FUNC8(hw, GCTL, gctl);
	FUNC9(10);

	/* Reset all global pending interrupts */
	FUNC8(hw, GIE, 0);
	/* Reset all SRC pending interrupts */
	FUNC8(hw, SRCIP, 0);
	FUNC9(30);

	/* Detect the card ID and configure GPIO accordingly. */
	switch (hw->model) {
	case CTSB055X:
		FUNC8(hw, GPIOCTL, 0x13fe);
		break;
	case CTSB073X:
		FUNC8(hw, GPIOCTL, 0x00e6);
		break;
	case CTUAA:
		FUNC8(hw, GPIOCTL, 0x00c2);
		break;
	default:
		FUNC8(hw, GPIOCTL, 0x01e6);
		break;
	}

	trn_info.vm_pgt_phys = info->vm_pgt_phys;
	err = FUNC7(hw, &trn_info);
	if (err < 0)
		return err;

	daio_info.msr = info->msr;
	err = FUNC4(hw, &daio_info);
	if (err < 0)
		return err;

	dac_info.msr = info->msr;
	err = FUNC3(hw, &dac_info);
	if (err < 0)
		return err;

	adc_info.msr = info->msr;
	adc_info.input = ADC_LINEIN;
	adc_info.mic20db = 0;
	err = FUNC0(hw, &adc_info);
	if (err < 0)
		return err;

	data = FUNC6(hw, SRCMCTL);
	data |= 0x1; /* Enables input from the audio ring */
	FUNC8(hw, SRCMCTL, data);

	return 0;
}