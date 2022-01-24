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
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad198x_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ad198x_spec *spec = codec->spec;

	if (!spec)
		return;

	FUNC2(&spec->gen);
	FUNC0(spec);
	FUNC1(codec);
}