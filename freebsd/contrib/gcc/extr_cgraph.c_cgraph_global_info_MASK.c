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
typedef  int /*<<< orphan*/  tree ;
struct cgraph_global_info {int dummy; } ;
struct cgraph_node {struct cgraph_global_info global; } ;

/* Variables and functions */
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cgraph_global_info_ready ; 
 struct cgraph_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

struct cgraph_global_info *
FUNC3 (tree decl)
{
  struct cgraph_node *node;

  FUNC2 (FUNC0 (decl) == FUNCTION_DECL && cgraph_global_info_ready);
  node = FUNC1 (decl);
  return &node->global;
}