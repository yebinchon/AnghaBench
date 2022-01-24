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
struct vport {TYPE_1__* ops; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {char const* (* get_name ) (struct vport*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OVSP_LOCAL ; 
 struct vport* FUNC0 (struct datapath const*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (struct vport*) ; 

const char *FUNC2(const struct datapath *dp)
{
	struct vport *vport = FUNC0(dp, OVSP_LOCAL);
	return vport->ops->get_name(vport);
}