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
typedef  void* u32 ;
struct TYPE_2__ {int /*<<< orphan*/  nodesub_list; } ;
struct publication {TYPE_1__ subscr; int /*<<< orphan*/  pport_list; int /*<<< orphan*/  local_list; void* key; void* ref; void* node; void* scope; void* upper; void* lower; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct publication* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct publication *FUNC3(u32 type, u32 lower, u32 upper,
				       u32 scope, u32 node, u32 port_ref,
				       u32 key)
{
	struct publication *publ = FUNC1(sizeof(*publ), GFP_ATOMIC);
	if (publ == NULL) {
		FUNC2("Publication creation failure, no memory\n");
		return NULL;
	}

	publ->type = type;
	publ->lower = lower;
	publ->upper = upper;
	publ->scope = scope;
	publ->node = node;
	publ->ref = port_ref;
	publ->key = key;
	FUNC0(&publ->local_list);
	FUNC0(&publ->pport_list);
	FUNC0(&publ->subscr.nodesub_list);
	return publ;
}