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
typedef  scalar_t__ tree ;
struct tree_statement_list_node {scalar_t__ stmt; } ;

/* Variables and functions */
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ STATEMENT_LIST ; 
 struct tree_statement_list_node* FUNC0 (scalar_t__) ; 
 struct tree_statement_list_node* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

tree 
FUNC3 (tree expr)
{
  if (expr == NULL_TREE)
    return NULL_TREE;

  if (FUNC2 (expr) == STATEMENT_LIST)
    {
      struct tree_statement_list_node *n = FUNC1 (expr);
      if (n && FUNC0 (expr) == n)
	return n->stmt;
      else
	return NULL_TREE;
    }

  if (FUNC2 (expr) == COMPOUND_EXPR)
    return NULL_TREE;

  return expr;
}