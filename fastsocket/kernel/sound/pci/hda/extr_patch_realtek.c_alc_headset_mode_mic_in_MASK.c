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
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_VREF50 ; 
 int FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec, hda_nid_t hp_pin,
				    hda_nid_t mic_pin)
{
	int val;

	switch (codec->vendor_id) {
	case 0x10ec0283:
		FUNC1(codec, 0x45, 0xc429);
		FUNC2(codec, hp_pin, 0);
		val = FUNC0(codec, 0x35);
		FUNC1(codec, 0x35, val | 1<<14);
		FUNC1(codec, 0x06, 0x2100);
		FUNC1(codec, 0x1a, 0x0021);
		FUNC1(codec, 0x26, 0x008c);
		FUNC2(codec, mic_pin, PIN_VREF50);
		break;
	case 0x10ec0292:
		FUNC2(codec, hp_pin, 0);
		FUNC1(codec, 0x19, 0xa208);
		FUNC1(codec, 0x2e, 0xacf0);
		break;
	case 0x10ec0668:
		FUNC1(codec, 0x11, 0x0001);
		FUNC2(codec, hp_pin, 0);
		FUNC1(codec, 0xb7, 0x802b);
		FUNC1(codec, 0xb5, 0x1040);
		val = FUNC0(codec, 0xc3);
		FUNC1(codec, 0xc3, val | 1<<12);
		FUNC2(codec, mic_pin, PIN_VREF50);
		break;
	}
	FUNC3("Headset jack set to mic-in mode.\n");
}