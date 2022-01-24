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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct hda_codec *codec)
{
	unsigned long timeout = jiffies + FUNC1(2000);

	do {
		if (FUNC0(codec)) {
			FUNC4("ca0132 DOWNLOAD OK :-) DSP IS RUNNING.\n");
			return true;
		}
		FUNC2(20);
	} while (FUNC5(jiffies, timeout));

	FUNC3("ca0132 DOWNLOAD FAILED!!! DSP IS NOT RUNNING.\n");
	return false;
}