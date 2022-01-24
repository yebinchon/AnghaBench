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
struct hda_codec {int num_nodes; int /*<<< orphan*/ * wcaps; int /*<<< orphan*/  start_nid; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_AUDIO_WIDGET_CAP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, hda_nid_t fg_node)
{
	int i;
	hda_nid_t nid;

	codec->num_nodes = FUNC1(codec, fg_node,
						 &codec->start_nid);
	codec->wcaps = FUNC0(codec->num_nodes * 4, GFP_KERNEL);
	if (!codec->wcaps)
		return -ENOMEM;
	nid = codec->start_nid;
	for (i = 0; i < codec->num_nodes; i++, nid++)
		codec->wcaps[i] = FUNC2(codec, nid,
						     AC_PAR_AUDIO_WIDGET_CAP);
	return 0;
}