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
struct hda_codec {int /*<<< orphan*/  chip_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, const char *name)
{
	FUNC1(codec->chip_name);
	codec->chip_name = FUNC2(name, GFP_KERNEL);
	if (!codec->chip_name) {
		FUNC0(codec);
		return -ENOMEM;
	}
	return 0;
}