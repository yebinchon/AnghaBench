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
struct usb_line6_pod {int /*<<< orphan*/  line6; int /*<<< orphan*/  prog_data_buf; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  POD_SYSEX_STORE ; 
 size_t SYSEX_DATA_OFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (struct usb_line6_pod*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,short,short,char*) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 struct usb_line6_pod* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, const char *buf, size_t count, short block0, short block1)
{
	struct usb_interface *interface = FUNC5(dev);
	struct usb_line6_pod *pod = FUNC6(interface);

	int size = 3 + sizeof(pod->prog_data_buf);
	char *sysex = FUNC3(pod, POD_SYSEX_STORE, size);
	if (!sysex)
		return 0;

	sysex[SYSEX_DATA_OFS] = 5;  /* see pod_dump() */
	FUNC4(buf, block0, block1, sysex + SYSEX_DATA_OFS + 1);
	FUNC2(sysex + SYSEX_DATA_OFS + 3, &pod->prog_data_buf, sizeof(pod->prog_data_buf));

	FUNC1(&pod->line6, sysex, size);
	FUNC0(sysex);
	/* needs some delay here on AMD64 platform */
	return count;
}