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
struct TYPE_2__ {scalar_t__ unsol_event; } ;
struct hda_codec {TYPE_1__ patch_ops; struct conexant_spec* spec; } ;
struct conexant_spec {int auto_mic; } ;

/* Variables and functions */
 int AUTO_MIC_PORTB ; 
 int AUTO_MIC_PORTC ; 
 int /*<<< orphan*/  CXT5051_PORTB_EVENT ; 
 int /*<<< orphan*/  CXT5051_PORTC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;

	FUNC0(codec);

	if (spec->auto_mic & AUTO_MIC_PORTB)
		FUNC2(codec, 0x17, CXT5051_PORTB_EVENT);
	if (spec->auto_mic & AUTO_MIC_PORTC)
		FUNC2(codec, 0x18, CXT5051_PORTC_EVENT);

	if (codec->patch_ops.unsol_event) {
		FUNC1(codec);
		FUNC3(codec);
		FUNC4(codec);
	}
	return 0;
}