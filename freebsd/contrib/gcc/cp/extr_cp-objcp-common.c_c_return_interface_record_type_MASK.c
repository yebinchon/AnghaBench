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
typedef  int /*<<< orphan*/ * tree ;
typedef  enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int IDENTIFIER_NODE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int tcc_exceptional ; 

tree
FUNC3 (tree typename)
{
  enum tree_code_class class;
  enum tree_code code;
  tree retval = NULL;

  if (typename == NULL)
      return retval;

  code = FUNC0 (typename);
  class = FUNC1 (code);

  if (code != IDENTIFIER_NODE
      || class != tcc_exceptional)
      return retval;

  if (FUNC2 (typename)
      && FUNC0 (FUNC2 (typename)) == RECORD_TYPE)
      retval = FUNC2 (typename);

  if (retval
      && FUNC0 (retval) != RECORD_TYPE)
      retval = NULL;

  return retval;
}