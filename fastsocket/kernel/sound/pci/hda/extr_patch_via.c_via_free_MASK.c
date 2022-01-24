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
struct via_spec {int /*<<< orphan*/  gen; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct via_spec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;

	if (!spec)
		return;

	FUNC2(codec);
	FUNC1(&spec->gen);
	FUNC0(spec);
}