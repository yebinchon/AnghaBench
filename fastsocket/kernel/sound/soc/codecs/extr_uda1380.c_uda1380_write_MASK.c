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
typedef  int u8 ;
struct snd_soc_codec {int (* hw_write ) (int /*<<< orphan*/ ,int*,int) ;int /*<<< orphan*/  control_data; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int UDA1380_MVOL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  uda1380_cache_dirty ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec, unsigned int reg,
	unsigned int value)
{
	u8 data[3];

	/* data is
	 *   data[0] is register offset
	 *   data[1] is MS byte
	 *   data[2] is LS byte
	 */
	data[0] = reg;
	data[1] = (value & 0xff00) >> 8;
	data[2] = value & 0x00ff;

	FUNC5(codec, reg, value);

	/* the interpolator & decimator regs must only be written when the
	 * codec DAI is active.
	 */
	if (!codec->active && (reg >= UDA1380_MVOL))
		return 0;
	FUNC3("uda1380: hw write %x val %x\n", reg, value);
	if (codec->hw_write(codec->control_data, data, 3) == 3) {
		unsigned int val;
		FUNC2(codec->control_data, data, 1);
		FUNC1(codec->control_data, data, 2);
		val = (data[0]<<8) | data[1];
		if (val != value) {
			FUNC3("uda1380: READ BACK VAL %x\n",
					(data[0]<<8) | data[1]);
			return -EIO;
		}
		if (reg >= 0x10)
			FUNC0(reg - 0x10, &uda1380_cache_dirty);
		return 0;
	} else
		return -EIO;
}