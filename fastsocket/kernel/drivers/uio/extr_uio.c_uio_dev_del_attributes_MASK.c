#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uio_port {scalar_t__ size; TYPE_3__* portio; } ;
struct uio_mem {scalar_t__ size; TYPE_1__* map; } ;
struct uio_device {TYPE_4__* dev; int /*<<< orphan*/ * portio_dir; TYPE_2__* info; int /*<<< orphan*/ * map_dir; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {struct uio_port* port; struct uio_mem* mem; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int MAX_UIO_MAPS ; 
 int MAX_UIO_PORT_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uio_attr_grp ; 

__attribute__((used)) static void FUNC2(struct uio_device *idev)
{
	int i;
	struct uio_mem *mem;
	struct uio_port *port;

	for (i = 0; i < MAX_UIO_MAPS; i++) {
		mem = &idev->info->mem[i];
		if (mem->size == 0)
			break;
		FUNC0(&mem->map->kobj);
	}
	FUNC0(idev->map_dir);

	for (i = 0; i < MAX_UIO_PORT_REGIONS; i++) {
		port = &idev->info->port[i];
		if (port->size == 0)
			break;
		FUNC0(&port->portio->kobj);
	}
	FUNC0(idev->portio_dir);

	FUNC1(&idev->dev->kobj, &uio_attr_grp);
}