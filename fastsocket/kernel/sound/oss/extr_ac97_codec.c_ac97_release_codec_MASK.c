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
struct ac97_codec {TYPE_1__* driver; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct ac97_codec*,TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  codec_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ac97_codec*,TYPE_1__*) ; 

void FUNC5(struct ac97_codec *codec)
{
	/* Remove from the list first, we don't want to be
	   "rediscovered" */
	FUNC2(&codec_mutex);
	FUNC1(&codec->list);
	FUNC3(&codec_mutex);
	/*
	 *	The driver needs to deal with internal
	 *	locking to avoid accidents here. 
	 */
	if(codec->driver)
		codec->driver->remove(codec, codec->driver);
	FUNC0(codec);
}