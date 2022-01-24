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
struct copy_body_data {int /*<<< orphan*/  decl_map; int /*<<< orphan*/  src_cfun; void* dst_fn; void* src_fn; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  cfun ; 
 void* current_function_decl ; 
 int /*<<< orphan*/  FUNC0 (struct copy_body_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct copy_body_data*) ; 
 int /*<<< orphan*/  splay_tree_compare_pointers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

tree
FUNC4 (tree type)
{
  struct copy_body_data id;

  FUNC0 (&id, 0, sizeof (id));
  id.src_fn = current_function_decl;
  id.dst_fn = current_function_decl;
  id.src_cfun = cfun;
  id.decl_map = FUNC3 (splay_tree_compare_pointers, NULL, NULL);

  type = FUNC1 (type, &id);

  FUNC2 (id.decl_map);

  return type;
}