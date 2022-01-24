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
struct nid_path {int active; int depth; int /*<<< orphan*/ * idx; scalar_t__* multi; int /*<<< orphan*/ * path; } ;
struct hda_gen_spec {scalar_t__ power_down_unused; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PWRST_D0 ; 
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int /*<<< orphan*/  AC_VERB_SET_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct nid_path*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,struct nid_path*,int,int) ; 
 scalar_t__ FUNC2 (struct hda_codec*,struct nid_path*,int) ; 
 scalar_t__ FUNC3 (struct hda_codec*,struct nid_path*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct hda_codec *codec, struct nid_path *path,
			   bool enable, bool add_aamix)
{
	struct hda_gen_spec *spec = codec->spec;
	int i;

	if (!enable)
		path->active = false;

	for (i = path->depth - 1; i >= 0; i--) {
		hda_nid_t nid = path->path[i];
		if (enable && spec->power_down_unused) {
			/* make sure the widget is powered up */
			if (!FUNC4(codec, nid, AC_PWRST_D0))
				FUNC5(codec, nid, 0,
						    AC_VERB_SET_POWER_STATE,
						    AC_PWRST_D0);
		}
		if (enable && path->multi[i])
			FUNC6(codec, nid, 0,
					    AC_VERB_SET_CONNECT_SEL,
					    path->idx[i]);
		if (FUNC2(codec, path, i))
			FUNC0(codec, path, i, enable, add_aamix);
		if (FUNC3(codec, path, i))
			FUNC1(codec, path, i, enable);
	}

	if (enable)
		path->active = true;
}