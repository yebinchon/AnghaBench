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
struct via_spec {int num_iverbs; int /*<<< orphan*/ * init_verbs; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	int i;

	for (i = 0; i < spec->num_iverbs; i++)
		FUNC3(codec, spec->init_verbs[i]);

	/* init power states */
	FUNC1(codec);
	FUNC0(codec, true);

	FUNC2(codec);

	FUNC4(codec);

	return 0;
}