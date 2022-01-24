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
struct dma_buffparms {int /*<<< orphan*/  callback_parm; int /*<<< orphan*/  (* audio_callback ) (int,int /*<<< orphan*/ ) ;} ;
struct audio_operations {int /*<<< orphan*/  poll_sleeper; int /*<<< orphan*/  out_sleeper; } ;

/* Variables and functions */
 struct audio_operations** audio_devs ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int dev, struct dma_buffparms *dmap)
{
	struct audio_operations *adev = audio_devs[dev];

	if (dmap->audio_callback != NULL)
		dmap->audio_callback(dev, dmap->callback_parm);
	FUNC1(&adev->out_sleeper);
	FUNC1(&adev->poll_sleeper);
}