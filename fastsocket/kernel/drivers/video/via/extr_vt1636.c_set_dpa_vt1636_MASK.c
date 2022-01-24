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
struct lvds_chip_information {int dummy; } ;
struct VT1636_DPA_SETTING {int /*<<< orphan*/  CLK_SEL_ST2; int /*<<< orphan*/  CLK_SEL_ST1; } ;
struct IODATA {int Index; int Mask; int /*<<< orphan*/  Data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lvds_setting_information*,struct lvds_chip_information*,struct IODATA) ; 

__attribute__((used)) static void FUNC1(struct lvds_setting_information
	*plvds_setting_info, struct lvds_chip_information *plvds_chip_info,
		    struct VT1636_DPA_SETTING *p_vt1636_dpa_setting)
{
	struct IODATA io_data;

	io_data.Index = 0x09;
	io_data.Mask = 0x1F;
	io_data.Data = p_vt1636_dpa_setting->CLK_SEL_ST1;
	FUNC0(plvds_setting_info,
		plvds_chip_info, io_data);

	io_data.Index = 0x08;
	io_data.Mask = 0x0F;
	io_data.Data = p_vt1636_dpa_setting->CLK_SEL_ST2;
	FUNC0(plvds_setting_info, plvds_chip_info,
		io_data);
}