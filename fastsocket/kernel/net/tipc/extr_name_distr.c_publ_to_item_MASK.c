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
struct publication {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; int /*<<< orphan*/  key; int /*<<< orphan*/  ref; } ;
struct distr_item {void* key; void* ref; void* upper; void* lower; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct distr_item *i, struct publication *p)
{
	i->type = FUNC1(p->type);
	i->lower = FUNC1(p->lower);
	i->upper = FUNC1(p->upper);
	i->ref = FUNC1(p->ref);
	i->key = FUNC1(p->key);
	FUNC0("publ_to_item: %u, %u, %u\n", p->type, p->lower, p->upper);
}