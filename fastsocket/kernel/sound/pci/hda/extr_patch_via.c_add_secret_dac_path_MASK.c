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
struct TYPE_2__ {int /*<<< orphan*/  mixer_nid; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {int num_nodes; scalar_t__ start_nid; struct via_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned int AC_WCAP_DIGITAL ; 
 scalar_t__ AC_WID_AUD_OUT ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 unsigned int FUNC1 (struct hda_codec*,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	int i, nums;
	hda_nid_t conn[8];
	hda_nid_t nid;

	if (!spec->gen.mixer_nid)
		return 0;
	nums = FUNC3(codec, spec->gen.mixer_nid, conn,
				       FUNC0(conn) - 1);
	for (i = 0; i < nums; i++) {
		if (FUNC2(FUNC1(codec, conn[i])) == AC_WID_AUD_OUT)
			return 0;
	}

	/* find the primary DAC and add to the connection list */
	nid = codec->start_nid;
	for (i = 0; i < codec->num_nodes; i++, nid++) {
		unsigned int caps = FUNC1(codec, nid);
		if (FUNC2(caps) == AC_WID_AUD_OUT &&
		    !(caps & AC_WCAP_DIGITAL)) {
			conn[nums++] = nid;
			return FUNC4(codec,
							  spec->gen.mixer_nid,
							  nums, conn);
		}
	}
	return 0;
}