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
struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ ndev; } ;
typedef  TYPE_1__ ixj_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC2(struct pcmcia_device *link)
{
	ixj_info_t *info = link->priv;
	FUNC0(0, "ixj_cs_release(0x%p)\n", link);
	info->ndev = 0;
	FUNC1(link);
}