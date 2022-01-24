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
typedef  char* tree ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* error_mark_node ; 

tree
FUNC3 (tree basetype, tree type)
{
  if (FUNC1 (basetype) == FUNCTION_DECL)
    basetype = FUNC0 (basetype);
  FUNC2 ("type %qT is not a base type for type %qT", basetype, type);
  return error_mark_node;
}