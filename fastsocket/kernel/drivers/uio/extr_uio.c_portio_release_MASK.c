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
struct uio_portio {int dummy; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uio_portio*) ; 
 struct uio_portio* FUNC1 (struct kobject*) ; 

__attribute__((used)) static void FUNC2(struct kobject *kobj)
{
	struct uio_portio *portio = FUNC1(kobj);
	FUNC0(portio);
}