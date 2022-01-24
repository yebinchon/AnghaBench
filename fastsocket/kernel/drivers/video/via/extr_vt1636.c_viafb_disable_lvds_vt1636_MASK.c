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
struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int output_interface; } ;

/* Variables and functions */
#define  INTERFACE_DFP_HIGH 131 
#define  INTERFACE_DFP_LOW 130 
#define  INTERFACE_DVP0 129 
#define  INTERFACE_DVP1 128 
 int /*<<< orphan*/  SR1E ; 
 int /*<<< orphan*/  SR2A ; 
 int /*<<< orphan*/ * VDD_OFF_TBL_VT1636 ; 
 int /*<<< orphan*/  VIASR ; 
 int /*<<< orphan*/  FUNC0 (struct lvds_setting_information*,struct lvds_chip_information*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct lvds_setting_information
			 *plvds_setting_info,
			 struct lvds_chip_information *plvds_chip_info)
{

	FUNC0(plvds_setting_info, plvds_chip_info,
				 VDD_OFF_TBL_VT1636[0]);

	/* Pad off: */
	switch (plvds_chip_info->output_interface) {
	case INTERFACE_DVP0:
		{
			FUNC1(SR1E, VIASR, 0x00, 0xC0);
			break;
		}

	case INTERFACE_DVP1:
		{
			FUNC1(SR1E, VIASR, 0x00, 0x30);
			break;
		}

	case INTERFACE_DFP_LOW:
		{
			FUNC1(SR2A, VIASR, 0x00, 0x03);
			break;
		}

	case INTERFACE_DFP_HIGH:
		{
			FUNC1(SR2A, VIASR, 0x00, 0x0C);
			break;
		}

	}
}