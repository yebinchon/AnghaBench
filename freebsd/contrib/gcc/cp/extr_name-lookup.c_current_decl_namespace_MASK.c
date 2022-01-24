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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ current_class_type ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ decl_namespace_list ; 

__attribute__((used)) static tree
FUNC2 (void)
{
  tree result;
  /* If we have been pushed into a different namespace, use it.  */
  if (decl_namespace_list)
    return FUNC0 (decl_namespace_list);

  if (current_class_type)
    result = FUNC1 (current_class_type);
  else if (current_function_decl)
    result = FUNC1 (current_function_decl);
  else
    result = current_namespace;
  return result;
}