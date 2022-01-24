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
struct hda_codec {int vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	switch (codec->vendor_id) {
	case 0x10ec0283:
		FUNC0(codec, 0x06, 0x2100);
		FUNC0(codec, 0x32, 0x4ea3);
		break;
	case 0x10ec0292:
		FUNC0(codec, 0x76, 0x000e);
		FUNC0(codec, 0x6c, 0x2400);
		FUNC0(codec, 0x6b, 0xc429);
		FUNC0(codec, 0x18, 0x7308);
		break;
	case 0x10ec0668:
		FUNC0(codec, 0x11, 0x0041);
		FUNC0(codec, 0x15, 0x0d40);
		FUNC0(codec, 0xb7, 0x802b);
		break;
	}
	FUNC1("Headset jack set to headphone (default) mode.\n");
}