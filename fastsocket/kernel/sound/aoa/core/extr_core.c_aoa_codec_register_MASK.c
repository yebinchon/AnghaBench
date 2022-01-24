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
struct aoa_codec {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int FUNC0 (struct aoa_codec*) ; 
 int /*<<< orphan*/  codec_list ; 
 scalar_t__ fabric ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct aoa_codec *codec)
{
	int err = 0;

	/* if there's a fabric already, we can tell if we
	 * will want to have this codec, so propagate error
	 * through. Otherwise, this will happen later... */
	if (fabric)
		err = FUNC0(codec);
	if (!err)
		FUNC1(&codec->list, &codec_list);
	return err;
}