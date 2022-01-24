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
typedef  void* tree ;
struct mem_address {void* offset; void* step; int /*<<< orphan*/  index; int /*<<< orphan*/  base; int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 void* NULL_TREE ; 
 int /*<<< orphan*/  TARGET_MEM_REF ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mem_address*) ; 
 scalar_t__ FUNC4 (void*) ; 

__attribute__((used)) static tree
FUNC5 (tree type, struct mem_address *addr)
{
  if (!FUNC3 (FUNC0 (type), addr))
    return NULL_TREE;

  if (addr->step && FUNC2 (addr->step))
    addr->step = NULL_TREE;

  if (addr->offset && FUNC4 (addr->offset))
    addr->offset = NULL_TREE;

  return FUNC1 (TARGET_MEM_REF, type,
		 addr->symbol, addr->base, addr->index,
		 addr->step, addr->offset, NULL, NULL);
}