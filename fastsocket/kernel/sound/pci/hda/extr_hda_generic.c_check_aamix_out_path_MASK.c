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
struct nid_path {int depth; scalar_t__* path; int active; } ;
struct TYPE_2__ {scalar_t__* hp_out_nid; scalar_t__* extra_out_nid; } ;
struct hda_gen_spec {scalar_t__* private_dac_nids; int /*<<< orphan*/  mixer_nid; TYPE_1__ multiout; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nid_path*,int /*<<< orphan*/ ) ; 
 struct nid_path* FUNC1 (struct hda_codec*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct nid_path* FUNC2 (struct hda_codec*,int) ; 
 int FUNC3 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec, int path_idx)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *path;
	hda_nid_t path_dac, dac, pin;

	path = FUNC2(codec, path_idx);
	if (!path || !path->depth ||
	    FUNC0(path, spec->mixer_nid))
		return 0;
	path_dac = path->path[0];
	dac = spec->private_dac_nids[0];
	pin = path->path[path->depth - 1];
	path = FUNC1(codec, dac, pin, spec->mixer_nid);
	if (!path) {
		if (dac != path_dac)
			dac = path_dac;
		else if (spec->multiout.hp_out_nid[0])
			dac = spec->multiout.hp_out_nid[0];
		else if (spec->multiout.extra_out_nid[0])
			dac = spec->multiout.extra_out_nid[0];
		else
			dac = 0;
		if (dac)
			path = FUNC1(codec, dac, pin,
						    spec->mixer_nid);
	}
	if (!path)
		return 0;
	/* print_nid_path("output-aamix", path); */
	path->active = false; /* unused as default */
	return FUNC3(codec, path);
}