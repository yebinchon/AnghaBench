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
struct cp_binding_level {scalar_t__ kind; } ;
typedef  struct cp_binding_level cxx_scope ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 struct cp_binding_level* class_binding_level ; 
 struct cp_binding_level* current_binding_level ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ sk_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

tree
FUNC4 (tree x, cxx_scope *level, bool is_friend)
{
  struct cp_binding_level *b;
  tree function_decl = current_function_decl;

  FUNC3 (TV_NAME_LOOKUP);
  current_function_decl = NULL_TREE;
  if (level->kind == sk_class)
    {
      b = class_binding_level;
      class_binding_level = level;
      FUNC1 (x);
      class_binding_level = b;
    }
  else
    {
      b = current_binding_level;
      current_binding_level = level;
      x = FUNC2 (x, is_friend);
      current_binding_level = b;
    }
  current_function_decl = function_decl;
  FUNC0 (TV_NAME_LOOKUP, x);
}