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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int /*<<< orphan*/  chipio_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_ADDRESS_HIGH ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_DATA_WRITE ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC0(&spec->chipio_mutex);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x20);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x19);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_DATA_WRITE, 0x00);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x2D);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x19);
	FUNC2(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_DATA_WRITE, 0x00);
	FUNC1(&spec->chipio_mutex);
}