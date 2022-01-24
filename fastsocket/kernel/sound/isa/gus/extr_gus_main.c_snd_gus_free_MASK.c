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
struct TYPE_2__ {scalar_t__ irq; scalar_t__ dma1; scalar_t__ dma2; int /*<<< orphan*/ * res_port2; int /*<<< orphan*/ * res_port1; } ;
struct snd_gus_card {TYPE_1__ gf1; int /*<<< orphan*/  equal_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_gus_card *gus)
{
	if (gus->gf1.res_port2 == NULL)
		goto __hw_end;
	FUNC5(gus);
	FUNC6(gus, 0);
      __hw_end:
	FUNC4(gus->gf1.res_port1);
	FUNC4(gus->gf1.res_port2);
	if (gus->gf1.irq >= 0)
		FUNC2(gus->gf1.irq, (void *) gus);
	if (gus->gf1.dma1 >= 0) {
		FUNC0(gus->gf1.dma1);
		FUNC1(gus->gf1.dma1);
	}
	if (!gus->equal_dma && gus->gf1.dma2 >= 0) {
		FUNC0(gus->gf1.dma2);
		FUNC1(gus->gf1.dma2);
	}
	FUNC3(gus);
	return 0;
}