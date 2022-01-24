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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ acked; scalar_t__ supported; } ;
struct tipc_node {TYPE_1__ bclink; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

u32 FUNC1(struct tipc_node *n_ptr)
{
	return (n_ptr->bclink.supported &&
		(FUNC0() != n_ptr->bclink.acked));
}