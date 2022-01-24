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
struct ip_set {TYPE_2__* type; TYPE_1__* variant; int /*<<< orphan*/  name; } ;
typedef  size_t ip_set_id_t ;
struct TYPE_4__ {int /*<<< orphan*/  me; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (struct ip_set*) ;} ;

/* Variables and functions */
 struct ip_set** ip_set_list ; 
 int /*<<< orphan*/  FUNC0 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_set*) ; 

__attribute__((used)) static void
FUNC4(ip_set_id_t index)
{
	struct ip_set *set = ip_set_list[index];

	FUNC2("set: %s\n",  set->name);
	ip_set_list[index] = NULL;

	/* Must call it without holding any lock */
	set->variant->destroy(set);
	FUNC1(set->type->me);
	FUNC0(set);
}