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
struct snd_pcm_substream {int dummy; } ;
struct snd_dummy {TYPE_1__* timer_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct snd_pcm_substream*) ;} ;

/* Variables and functions */
 struct snd_dummy* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_dummy *dummy = FUNC0(substream);
	dummy->timer_ops->free(substream);
	return 0;
}