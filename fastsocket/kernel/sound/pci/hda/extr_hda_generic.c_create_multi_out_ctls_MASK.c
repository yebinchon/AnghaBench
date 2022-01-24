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
struct nid_path {int dummy; } ;
struct hda_gen_spec {scalar_t__ multi_ios; int /*<<< orphan*/ * out_paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct auto_pin_cfg {int line_outs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NID_PATH_MUTE_CTL ; 
 int /*<<< orphan*/  NID_PATH_VOL_CTL ; 
 int FUNC0 (struct hda_codec*,char const*,int,struct nid_path*) ; 
 int FUNC1 (struct hda_codec*,char const*,int,struct nid_path*) ; 
 int FUNC2 (struct hda_codec*,char*,int /*<<< orphan*/ ,int,struct nid_path*) ; 
 int FUNC3 (struct hda_codec*,char*,int /*<<< orphan*/ ,int,struct nid_path*) ; 
 char* FUNC4 (struct hda_codec*,int,int*,int /*<<< orphan*/ ) ; 
 struct nid_path* FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec,
				 const struct auto_pin_cfg *cfg)
{
	struct hda_gen_spec *spec = codec->spec;
	int i, err, noutputs;

	noutputs = cfg->line_outs;
	if (spec->multi_ios > 0 && cfg->line_outs < 3)
		noutputs += spec->multi_ios;

	for (i = 0; i < noutputs; i++) {
		const char *name;
		int index;
		struct nid_path *path;

		path = FUNC5(codec, spec->out_paths[i]);
		if (!path)
			continue;

		name = FUNC4(codec, i, &index, NID_PATH_VOL_CTL);
		if (!name || !FUNC6(name, "CLFE")) {
			/* Center/LFE */
			err = FUNC3(codec, "Center", 0, 1, path);
			if (err < 0)
				return err;
			err = FUNC3(codec, "LFE", 0, 2, path);
			if (err < 0)
				return err;
		} else {
			err = FUNC1(codec, name, index, path);
			if (err < 0)
				return err;
		}

		name = FUNC4(codec, i, &index, NID_PATH_MUTE_CTL);
		if (!name || !FUNC6(name, "CLFE")) {
			err = FUNC2(codec, "Center", 0, 1, path);
			if (err < 0)
				return err;
			err = FUNC2(codec, "LFE", 0, 2, path);
			if (err < 0)
				return err;
		} else {
			err = FUNC0(codec, name, index, path);
			if (err < 0)
				return err;
		}
	}
	return 0;
}