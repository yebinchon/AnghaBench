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
struct vport {int dummy; } ;
struct netdev_vport {int dummy; } ;

/* Variables and functions */
 struct netdev_vport* FUNC0 (struct vport const*) ; 

__attribute__((used)) static inline struct netdev_vport *
FUNC1(const struct vport *vport)
{
	return FUNC0(vport);
}