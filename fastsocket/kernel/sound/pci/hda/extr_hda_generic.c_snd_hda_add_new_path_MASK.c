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
struct nid_path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 struct nid_path* FUNC0 (struct hda_codec*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nid_path*,int /*<<< orphan*/ ,int) ; 
 struct nid_path* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct hda_codec*,scalar_t__,scalar_t__,int,struct nid_path*) ; 

struct nid_path *
FUNC5(struct hda_codec *codec, hda_nid_t from_nid,
		     hda_nid_t to_nid, int anchor_nid)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *path;

	if (from_nid && to_nid && !FUNC1(codec, from_nid, to_nid))
		return NULL;

	/* check whether the path has been already added */
	path = FUNC0(codec, from_nid, to_nid, anchor_nid);
	if (path)
		return path;

	path = FUNC3(&spec->paths);
	if (!path)
		return NULL;
	FUNC2(path, 0, sizeof(*path));
	if (FUNC4(codec, from_nid, to_nid, anchor_nid, path))
		return path;
	/* push back */
	spec->paths.used--;
	return NULL;
}