#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  gfx_chip_name; } ;

/* Variables and functions */
 scalar_t__ BIT0 ; 
 scalar_t__ BIT1 ; 
 scalar_t__ BIT2 ; 
 scalar_t__ BIT3 ; 
 scalar_t__ BIT4 ; 
 scalar_t__ BIT5 ; 
 scalar_t__ BIT6 ; 
 scalar_t__ BIT7 ; 
 int /*<<< orphan*/  CR6B ; 
 int /*<<< orphan*/  CR6C ; 
 int /*<<< orphan*/  CR79 ; 
 int /*<<< orphan*/  CR93 ; 
 int /*<<< orphan*/  CR96 ; 
 int /*<<< orphan*/  CR97 ; 
 int /*<<< orphan*/  CR99 ; 
 int /*<<< orphan*/  CR9B ; 
 int IGA1 ; 
 int IGA2 ; 
#define  INTERFACE_DFP_HIGH 132 
#define  INTERFACE_DFP_LOW 131 
#define  INTERFACE_DVP0 130 
#define  INTERFACE_DVP1 129 
#define  INTERFACE_TMDS 128 
 int /*<<< orphan*/  SR1E ; 
 int /*<<< orphan*/  SR2A ; 
 int /*<<< orphan*/  UNICHROME_CLE266 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* viaparinfo ; 

__attribute__((used)) static void FUNC5(int set_iga, int output_interface)
{
	switch (output_interface) {
	case INTERFACE_DVP0:
		FUNC4(CR6B, VIACR, 0x01, BIT0);

		if (set_iga == IGA1) {
			FUNC4(CR96, VIACR, 0x00, BIT4);
			FUNC4(CR6C, VIACR, 0x21, BIT0 +
				BIT5 + BIT7);
		} else {
			FUNC4(CR96, VIACR, 0x10, BIT4);
			FUNC4(CR6C, VIACR, 0xA1, BIT0 +
				BIT5 + BIT7);
		}

		FUNC4(SR1E, VIASR, 0xC0, BIT7 + BIT6);

		FUNC0();
		break;

	case INTERFACE_DVP1:
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
			if (set_iga == IGA1)
				FUNC4(CR93, VIACR, 0x21,
					       BIT0 + BIT5 + BIT7);
			else
				FUNC4(CR93, VIACR, 0xA1,
					       BIT0 + BIT5 + BIT7);
		} else {
			if (set_iga == IGA1)
				FUNC4(CR9B, VIACR, 0x00, BIT4);
			else
				FUNC4(CR9B, VIACR, 0x10, BIT4);
		}

		FUNC4(SR1E, VIASR, 0x30, BIT4 + BIT5);
		FUNC1();
		break;
	case INTERFACE_DFP_HIGH:
		if (viaparinfo->chip_info->gfx_chip_name != UNICHROME_CLE266) {
			if (set_iga == IGA1) {
				FUNC4(CR96, VIACR, 0x00, BIT4);
				FUNC4(CR97, VIACR, 0x03,
					       BIT0 + BIT1 + BIT4);
			} else {
				FUNC4(CR96, VIACR, 0x10, BIT4);
				FUNC4(CR97, VIACR, 0x13,
					       BIT0 + BIT1 + BIT4);
			}
		}
		FUNC4(SR2A, VIASR, 0x0C, BIT2 + BIT3);
		break;

	case INTERFACE_DFP_LOW:
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
			break;

		if (set_iga == IGA1) {
			FUNC4(CR99, VIACR, 0x00, BIT4);
			FUNC4(CR9B, VIACR, 0x00, BIT4);
		} else {
			FUNC4(CR99, VIACR, 0x10, BIT4);
			FUNC4(CR9B, VIACR, 0x10, BIT4);
		}

		FUNC4(SR2A, VIASR, 0x03, BIT0 + BIT1);
		FUNC2();
		break;

	case INTERFACE_TMDS:
		if (set_iga == IGA1)
			FUNC4(CR99, VIACR, 0x00, BIT4);
		else
			FUNC4(CR99, VIACR, 0x10, BIT4);
		break;
	}

	if (set_iga == IGA2) {
		FUNC3();
		/* Disable LCD Scaling */
		FUNC4(CR79, VIACR, 0x00, BIT0);
	}
}