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
struct TYPE_4__ {int /*<<< orphan*/  IntType; } ;
struct TYPE_3__ {int IOAddrLines; void* Attributes2; void* Attributes1; } ;
struct pcmcia_device {int /*<<< orphan*/  priv; TYPE_2__ conf; TYPE_1__ io; } ;
struct ixj_info_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MEMORY_AND_IO ; 
 void* IO_DATA_PATH_WIDTH_8 ; 
 int FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *p_dev)
{
	FUNC0(0, "ixj_attach()\n");
	/* Create new ixj device */
	p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
	p_dev->io.Attributes2 = IO_DATA_PATH_WIDTH_8;
	p_dev->io.IOAddrLines = 3;
	p_dev->conf.IntType = INT_MEMORY_AND_IO;
	p_dev->priv = FUNC2(sizeof(struct ixj_info_t), GFP_KERNEL);
	if (!p_dev->priv) {
		return -ENOMEM;
	}

	return FUNC1(p_dev);
}