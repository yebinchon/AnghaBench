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
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 TYPE_1__** ip_set_list ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(ip_set_id_t index)
{
	FUNC0(&ip_set_ref_lock);
	ip_set_list[index]->ref++;
	FUNC1(&ip_set_ref_lock);
}