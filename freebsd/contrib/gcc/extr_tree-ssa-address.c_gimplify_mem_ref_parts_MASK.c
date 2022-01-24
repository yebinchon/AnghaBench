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
struct mem_address {void* index; void* base; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 void* FUNC0 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (block_stmt_iterator *bsi, struct mem_address *parts)
{
  if (parts->base)
    parts->base = FUNC0 (bsi, parts->base,
					    true, NULL_TREE);
  if (parts->index)
    parts->index = FUNC0 (bsi, parts->index,
					     true, NULL_TREE);
}