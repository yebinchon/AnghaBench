#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vwsnd_port_t ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __inline__ unsigned int FUNC3(vwsnd_port_t *port, int inc)
{
	unsigned long flags;
	unsigned int ret;

	FUNC1(&port->lock, flags);
	{
		ret = FUNC0(port, inc);
	}
	FUNC2(&port->lock, flags);
	return ret;
}