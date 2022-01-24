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
struct sigmatel_spec {int /*<<< orphan*/  gen; } ;
struct hda_codec {int no_trigger_sense; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sigmatel_spec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;

	spec = FUNC0(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	FUNC1(&spec->gen);
	codec->spec = spec;
	codec->no_trigger_sense = 1; /* seems common with STAC/IDT codecs */
	return 0;
}