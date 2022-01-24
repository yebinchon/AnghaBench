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
typedef  int /*<<< orphan*/  u32 ;
struct hda_codec {int /*<<< orphan*/  hash_mutex; } ;
struct TYPE_2__ {int val; } ;
struct hda_amp_info {int /*<<< orphan*/  amp_caps; TYPE_1__ head; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int INFO_AMP_CAPS ; 
 struct hda_amp_info* FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct hda_codec *codec, hda_nid_t nid, int dir, u32 key,
		unsigned int (*func)(struct hda_codec *, hda_nid_t, int))
{
	struct hda_amp_info *info;
	unsigned int val;

	FUNC1(&codec->hash_mutex);
	info = FUNC0(codec, key);
	if (!info) {
		FUNC2(&codec->hash_mutex);
		return 0;
	}
	if (!(info->head.val & INFO_AMP_CAPS)) {
		FUNC2(&codec->hash_mutex); /* for reentrance */
		val = func(codec, nid, dir);
		FUNC3(codec, key, val);
	} else {
		val = info->amp_caps;
		FUNC2(&codec->hash_mutex);
	}
	return val;
}