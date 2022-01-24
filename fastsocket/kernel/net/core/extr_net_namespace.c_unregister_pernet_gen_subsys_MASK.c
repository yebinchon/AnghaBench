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
struct pernet_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_generic_ids ; 
 int /*<<< orphan*/  net_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct pernet_operations*) ; 

void FUNC4(int id, struct pernet_operations *ops)
{
	FUNC1(&net_mutex);
	FUNC3(ops);
	FUNC0(&net_generic_ids, id);
	FUNC2(&net_mutex);
}