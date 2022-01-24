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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ad198x_spec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	struct ad198x_spec *spec;

	spec = FUNC0(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	codec->spec = spec;
	FUNC1(&spec->gen);
	return 0;
}