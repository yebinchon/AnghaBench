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
struct usb_line6_pod {int /*<<< orphan*/  dumpreq; int /*<<< orphan*/  line6; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  POD_DUMP_MEMORY ; 
 int /*<<< orphan*/  POD_SYSEX_DUMPMEM ; 
 int SYSEX_DATA_OFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (struct usb_line6_pod*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,short,short,char*) ; 
 struct usb_interface* FUNC6 (struct device*) ; 
 struct usb_line6_pod* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, const char *buf, size_t count, short block0, short block1)
{
	struct usb_interface *interface = FUNC6(dev);
	struct usb_line6_pod *pod = FUNC7(interface);
	int size = 4;
	char *sysex = FUNC4(pod, POD_SYSEX_DUMPMEM, size);

	if (!sysex)
		return 0;

	FUNC5(buf, block0, block1, sysex + SYSEX_DATA_OFS);
	sysex[SYSEX_DATA_OFS + 2] = 0;
	sysex[SYSEX_DATA_OFS + 3] = 0;
	FUNC2(&pod->dumpreq, POD_DUMP_MEMORY);

	if (FUNC3(&pod->line6, sysex, size) < size)
		FUNC1(&pod->dumpreq);

	FUNC0(sysex);
	/* needs some delay here on AMD64 platform */
	return count;
}