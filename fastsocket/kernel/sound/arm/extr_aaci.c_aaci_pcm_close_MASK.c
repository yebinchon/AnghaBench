#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int cr; int /*<<< orphan*/ * substream; } ;
struct aaci {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * irq; } ;
struct TYPE_3__ {struct aaci_runtime* private_data; } ;

/* Variables and functions */
 int CR_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct aaci*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct aaci *aaci = substream->private_data;
	struct aaci_runtime *aacirun = substream->runtime->private_data;

	FUNC0(aacirun->cr & CR_EN);

	aacirun->substream = NULL;
	FUNC1(aaci->dev->irq[0], aaci);

	return 0;
}