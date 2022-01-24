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
typedef  scalar_t__ u8 ;
struct w1_slave {int* rom; TYPE_1__* family; struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rom ;
struct TYPE_2__ {int /*<<< orphan*/  fid; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  W1_CONVERT_TEMP ; 
 int /*<<< orphan*/  W1_READ_SCRATCHPAD ; 
 struct w1_slave* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int,char*,int,...) ; 
 scalar_t__ FUNC8 (scalar_t__*,int) ; 
 int FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct w1_master*,unsigned int) ; 
 int FUNC11 (struct w1_master*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct w1_slave*) ; 
 scalar_t__ w1_strong_pullup ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct w1_master*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC15(struct device *device,
	struct device_attribute *attr, char *buf)
{
	struct w1_slave *sl = FUNC0(device);
	struct w1_master *dev = sl->master;
	u8 rom[9], crc, verdict;
	int i, max_trying = 10;
	ssize_t c = PAGE_SIZE;

	FUNC5(&dev->mutex);

	FUNC3(rom, 0, sizeof(rom));

	verdict = 0;
	crc = 0;

	while (max_trying--) {
		if (!FUNC12(sl)) {
			int count = 0;
			unsigned int tm = 750;

			/* 750ms strong pullup (or delay) after the convert */
			if (w1_strong_pullup)
				FUNC10(dev, tm);
			FUNC14(dev, W1_CONVERT_TEMP);
			if (!w1_strong_pullup)
				FUNC4(tm);

			if (!FUNC12(sl)) {

				FUNC14(dev, W1_READ_SCRATCHPAD);
				if ((count = FUNC11(dev, rom, 9)) != 9) {
					FUNC1(device, "w1_read_block() "
						"returned %u instead of 9.\n",
						count);
				}

				crc = FUNC8(rom, 8);

				if (rom[8] == crc)
					verdict = 1;
			}
		}

		if (!FUNC13(rom))
			break;
	}

	for (i = 0; i < 9; ++i)
		c -= FUNC7(buf + PAGE_SIZE - c, c, "%02x ", rom[i]);
	c -= FUNC7(buf + PAGE_SIZE - c, c, ": crc=%02x %s\n",
			   crc, (verdict) ? "YES" : "NO");
	if (verdict)
		FUNC2(sl->rom, rom, sizeof(sl->rom));
	else
		FUNC1(device, "18S20 doesn't respond to CONVERT_TEMP.\n");

	for (i = 0; i < 9; ++i)
		c -= FUNC7(buf + PAGE_SIZE - c, c, "%02x ", sl->rom[i]);

	c -= FUNC7(buf + PAGE_SIZE - c, c, "t=%d\n",
		FUNC9(rom, sl->family->fid));
	FUNC6(&dev->mutex);

	return PAGE_SIZE - c;
}