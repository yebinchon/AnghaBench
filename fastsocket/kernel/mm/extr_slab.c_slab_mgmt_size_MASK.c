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
struct slab {int dummy; } ;
typedef  int /*<<< orphan*/  kmem_bufctl_t ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 

__attribute__((used)) static size_t FUNC1(size_t nr_objs, size_t align)
{
	return FUNC0(sizeof(struct slab)+nr_objs*sizeof(kmem_bufctl_t), align);
}