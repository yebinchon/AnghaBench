#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* w1_slave_found_callback ) (struct w1_master*,unsigned long long) ;
typedef  int /*<<< orphan*/  u8 ;
struct w1_master {int dummy; } ;
struct ds1wm_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1WM_CMD ; 
 int /*<<< orphan*/  DS1WM_CMD_SRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 unsigned char FUNC1 (struct ds1wm_data*,int) ; 
 scalar_t__ FUNC2 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1wm_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ds1wm_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, struct w1_master *master_dev,
			u8 search_type, w1_slave_found_callback slave_found)
{
	struct ds1wm_data *ds1wm_data = data;
	int i;
	unsigned long long rom_id;

	/* XXX We need to iterate for multiple devices per the DS1WM docs.
	 * See http://www.maxim-ic.com/appnotes.cfm/appnote_number/120. */
	if (FUNC2(ds1wm_data))
		return;

	FUNC3(ds1wm_data, search_type);
	FUNC4(ds1wm_data, DS1WM_CMD, DS1WM_CMD_SRA);

	for (rom_id = 0, i = 0; i < 16; i++) {

		unsigned char resp, r, d;

		resp = FUNC1(ds1wm_data, 0x00);

		r = ((resp & 0x02) >> 1) |
		    ((resp & 0x08) >> 2) |
		    ((resp & 0x20) >> 3) |
		    ((resp & 0x80) >> 4);

		d = ((resp & 0x01) >> 0) |
		    ((resp & 0x04) >> 1) |
		    ((resp & 0x10) >> 2) |
		    ((resp & 0x40) >> 3);

		rom_id |= (unsigned long long) r << (i * 4);

	}
	FUNC0(&ds1wm_data->pdev->dev, "found 0x%08llX\n", rom_id);

	FUNC4(ds1wm_data, DS1WM_CMD, ~DS1WM_CMD_SRA);
	FUNC2(ds1wm_data);

	slave_found(master_dev, rom_id);
}