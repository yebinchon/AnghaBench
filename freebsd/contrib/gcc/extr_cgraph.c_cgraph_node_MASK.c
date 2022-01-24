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
struct cgraph_node {struct cgraph_node* master_clone; struct cgraph_node* nested; struct cgraph_node* origin; struct cgraph_node* next_nested; void* decl; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  INSERT ; 
 scalar_t__ FUNC1 (void*) ; 
 struct cgraph_node* FUNC2 () ; 
 scalar_t__ cgraph_hash ; 
 int /*<<< orphan*/  eq_node ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  hash_node ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,struct cgraph_node*,int /*<<< orphan*/ ) ; 

struct cgraph_node *
FUNC6 (tree decl)
{
  struct cgraph_node key, *node, **slot;

  FUNC3 (FUNC1 (decl) == FUNCTION_DECL);

  if (!cgraph_hash)
    cgraph_hash = FUNC4 (10, hash_node, eq_node, NULL);

  key.decl = decl;

  slot = (struct cgraph_node **) FUNC5 (cgraph_hash, &key, INSERT);

  if (*slot)
    {
      node = *slot;
      if (!node->master_clone)
	node->master_clone = node;
      return node;
    }

  node = FUNC2 ();
  node->decl = decl;
  *slot = node;
  if (FUNC0 (decl) && FUNC1 (FUNC0 (decl)) == FUNCTION_DECL)
    {
      node->origin = FUNC6 (FUNC0 (decl));
      node->next_nested = node->origin->nested;
      node->origin->nested = node;
      node->master_clone = node;
    }
  return node;
}