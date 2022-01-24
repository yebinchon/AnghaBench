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
struct usb_line6_pod {char prog_data; int /*<<< orphan*/  line6; } ;

/* Variables and functions */
 int /*<<< orphan*/  POD_SYSEX_DUMP ; 
 size_t SYSEX_DATA_OFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char const*,int) ; 
 char* FUNC3 (struct usb_line6_pod*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_line6_pod*) ; 

__attribute__((used)) static void FUNC5(struct usb_line6_pod *pod, const unsigned char *data)
{
	int size = 1 + sizeof(pod->prog_data);
	char *sysex = FUNC3(pod, POD_SYSEX_DUMP, size);
	if (!sysex)
		return;
	/* Don't know what this is good for, but PODxt Pro transmits it, so we
	 * also do... */
	sysex[SYSEX_DATA_OFS] = 5;
	FUNC2(sysex + SYSEX_DATA_OFS + 1, data, sizeof(pod->prog_data));
	FUNC1(&pod->line6, sysex, size);
	FUNC2(&pod->prog_data, data, sizeof(pod->prog_data));
	FUNC4(pod);
	FUNC0(sysex);
}