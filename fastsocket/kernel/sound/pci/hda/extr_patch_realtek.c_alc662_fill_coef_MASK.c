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
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	int val, coef;

	coef = FUNC0(codec);

	switch (codec->vendor_id) {
	case 0x10ec0662:
		if ((coef & 0x00f0) == 0x0030) {
			val = FUNC1(codec, 0x4); /* EAPD Ctrl */
			FUNC2(codec, 0x4, val & ~(1<<10));
		}
		break;
	case 0x10ec0272:
	case 0x10ec0273:
	case 0x10ec0663:
	case 0x10ec0665:
	case 0x10ec0670:
	case 0x10ec0671:
	case 0x10ec0672:
		val = FUNC1(codec, 0xd); /* EAPD Ctrl */
		FUNC2(codec, 0xd, val | (1<<14));
		break;
	}
}