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
struct list_set {int /*<<< orphan*/  gc; int /*<<< orphan*/  timeout; } ;
struct ip_set {struct list_set* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ip_set *set)
{
	struct list_set *map = set->data;

	if (FUNC3(map->timeout))
		FUNC0(&map->gc);
	FUNC2(set);
	FUNC1(map);

	set->data = NULL;
}