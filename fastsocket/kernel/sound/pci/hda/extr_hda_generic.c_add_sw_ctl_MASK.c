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
struct nid_path {unsigned int* ctls; } ;
struct hda_codec {int /*<<< orphan*/  spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int HDA_CTL_BIND_MUTE ; 
 int HDA_CTL_WIDGET_MUTE ; 
 scalar_t__ HDA_INPUT ; 
 size_t NID_PATH_MUTE_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char const*,int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, const char *pfx, int cidx,
		      unsigned int chs, struct nid_path *path)
{
	unsigned int val;
	int type = HDA_CTL_WIDGET_MUTE;

	if (!path)
		return 0;
	val = path->ctls[NID_PATH_MUTE_CTL];
	if (!val)
		return 0;
	val = FUNC1(val, chs);
	if (FUNC2(val) == HDA_INPUT) {
		hda_nid_t nid = FUNC3(val);
		int nums = FUNC4(codec, nid);
		if (nums > 1) {
			type = HDA_CTL_BIND_MUTE;
			val |= nums << 19;
		}
	}
	return FUNC0(codec->spec, type, pfx, cidx, val);
}