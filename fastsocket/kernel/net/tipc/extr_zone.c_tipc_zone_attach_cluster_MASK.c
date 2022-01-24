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
typedef  size_t u32 ;
struct cluster {int addr; } ;
struct _zone {struct cluster** clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 size_t tipc_max_clusters ; 

void FUNC2(struct _zone *z_ptr, struct cluster *c_ptr)
{
	u32 c_num = FUNC1(c_ptr->addr);

	FUNC0(c_ptr->addr);
	FUNC0(c_num <= tipc_max_clusters);
	FUNC0(z_ptr->clusters[c_num] == NULL);
	z_ptr->clusters[c_num] = c_ptr;
}