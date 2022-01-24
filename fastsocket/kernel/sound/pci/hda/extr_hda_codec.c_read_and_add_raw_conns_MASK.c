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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec, hda_nid_t nid)
{
	hda_nid_t list[32];
	hda_nid_t *result = list;
	int len;

	len = FUNC4(codec, nid, list, FUNC0(list));
	if (len == -ENOSPC) {
		len = FUNC3(codec, nid);
		result = FUNC2(sizeof(hda_nid_t) * len, GFP_KERNEL);
		if (!result)
			return -ENOMEM;
		len = FUNC4(codec, nid, result, len);
	}
	if (len >= 0)
		len = FUNC5(codec, nid, len, result);
	if (result != list)
		FUNC1(result);
	return len;
}