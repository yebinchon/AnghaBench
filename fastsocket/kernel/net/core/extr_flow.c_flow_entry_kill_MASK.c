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
struct flow_cache_entry {TYPE_2__* object; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* delete ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  flow_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct flow_cache_entry *fle)
{
	if (fle->object)
		fle->object->ops->delete(fle->object);
	FUNC0(flow_cachep, fle);
}