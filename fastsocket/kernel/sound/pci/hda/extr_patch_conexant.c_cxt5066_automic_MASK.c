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
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ asus; scalar_t__ hp_laptop; scalar_t__ thinkpad; scalar_t__ ideapad; scalar_t__ dell_vostro; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;

	if (spec->dell_vostro)
		FUNC4(codec);
	else if (spec->ideapad)
		FUNC2(codec);
	else if (spec->thinkpad)
		FUNC3(codec);
	else if (spec->hp_laptop)
		FUNC1(codec);
	else if (spec->asus)
		FUNC0(codec);
}