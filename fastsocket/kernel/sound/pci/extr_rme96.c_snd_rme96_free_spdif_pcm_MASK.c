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
struct snd_pcm {scalar_t__ private_data; } ;
struct rme96 {int /*<<< orphan*/ * spdif_pcm; } ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(struct snd_pcm *pcm)
{
	struct rme96 *rme96 = (struct rme96 *) pcm->private_data;
	rme96->spdif_pcm = NULL;
}