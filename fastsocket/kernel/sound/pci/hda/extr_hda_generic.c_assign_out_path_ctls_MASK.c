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
struct hda_codec {int dummy; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned int AC_WID_AUD_OUT ; 
 unsigned int AC_WID_PIN ; 
 int BAD_SHARED_VOL ; 
 unsigned int FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 size_t NID_PATH_MUTE_CTL ; 
 size_t NID_PATH_VOL_CTL ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hda_codec*,unsigned int,size_t) ; 
 scalar_t__ FUNC4 (struct hda_codec*,struct nid_path*) ; 
 scalar_t__ FUNC5 (struct hda_codec*,struct nid_path*) ; 
 scalar_t__ FUNC6 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, struct nid_path *path)
{
	hda_nid_t nid;
	unsigned int val;
	int badness = 0;

	if (!path)
		return BAD_SHARED_VOL * 2;

	if (path->ctls[NID_PATH_VOL_CTL] ||
	    path->ctls[NID_PATH_MUTE_CTL])
		return 0; /* already evaluated */

	nid = FUNC5(codec, path);
	if (nid) {
		val = FUNC0(nid, 3, 0, HDA_OUTPUT);
		if (FUNC3(codec, val, NID_PATH_VOL_CTL))
			badness += BAD_SHARED_VOL;
		else
			path->ctls[NID_PATH_VOL_CTL] = val;
	} else
		badness += BAD_SHARED_VOL;
	nid = FUNC4(codec, path);
	if (nid) {
		unsigned int wid_type = FUNC2(FUNC1(codec, nid));
		if (wid_type == AC_WID_PIN || wid_type == AC_WID_AUD_OUT ||
		    FUNC6(codec, nid, HDA_OUTPUT))
			val = FUNC0(nid, 3, 0, HDA_OUTPUT);
		else
			val = FUNC0(nid, 3, 0, HDA_INPUT);
		if (FUNC3(codec, val, NID_PATH_MUTE_CTL))
			badness += BAD_SHARED_VOL;
		else
			path->ctls[NID_PATH_MUTE_CTL] = val;
	} else
		badness += BAD_SHARED_VOL;
	return badness;
}