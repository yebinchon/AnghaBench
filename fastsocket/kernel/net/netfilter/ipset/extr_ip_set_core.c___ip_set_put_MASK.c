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
typedef  size_t ip_set_id_t ;
struct TYPE_2__ {scalar_t__ ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** ip_set_list ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(ip_set_id_t index)
{
	FUNC1(&ip_set_ref_lock);
	FUNC0(ip_set_list[index]->ref == 0);
	ip_set_list[index]->ref--;
	FUNC2(&ip_set_ref_lock);
}