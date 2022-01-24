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
struct nid_path {int active; } ;
struct hda_gen_spec {TYPE_1__* multi_io; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  ctl_in; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_gen_spec*) ; 
 struct nid_path* FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,struct nid_path*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, int idx, bool output)
{
	struct hda_gen_spec *spec = codec->spec;
	hda_nid_t nid = spec->multi_io[idx].pin;
	struct nid_path *path;

	path = FUNC1(codec, idx);
	if (!path)
		return -EINVAL;

	if (path->active == output)
		return 0;

	if (output) {
		FUNC4(codec, nid, PIN_OUT, true);
		FUNC5(codec, path, true, FUNC0(spec));
		FUNC3(codec, nid, true);
	} else {
		FUNC3(codec, nid, false);
		FUNC5(codec, path, false, FUNC0(spec));
		FUNC4(codec, nid, spec->multi_io[idx].ctl_in, true);
		FUNC2(codec, path);
	}

	/* update jack retasking in case it modifies any of them */
	FUNC6(codec);

	return 0;
}