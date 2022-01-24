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
struct TYPE_2__ {struct o2nm_cluster* default_groups; } ;
struct o2nm_cluster {TYPE_1__ cl_group; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct o2nm_cluster*) ; 
 struct o2nm_cluster* FUNC1 (struct config_item*) ; 

__attribute__((used)) static void FUNC2(struct config_item *item)
{
	struct o2nm_cluster *cluster = FUNC1(item);

	FUNC0(cluster->cl_group.default_groups);
	FUNC0(cluster);
}