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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  unsigned_type_node ; 

tree
FUNC8 (tree exp)
{
  tree dst_obj;
  int  int_size = FUNC7 (FUNC1 (unsigned_type_node));
  int offset;
  /* dst->object In thid case 'object' is the field
   of the object passed offset by: void * + void* + int + int + void* + void *
   This must match definition of Block_byref structs. */
  /* APPLE LOCAL radar 6244520 */
  offset = FUNC0 (Pmode) + FUNC0 (Pmode) 
	    + int_size + int_size + FUNC0 (Pmode) +
	    FUNC0 (Pmode);
  dst_obj = FUNC2 (PLUS_EXPR, ptr_type_node, exp,
		     FUNC5 (NULL_TREE, offset));
  /* APPLE LOCAL begin radar 6180456 */
  /* Type case to: 'void **' */
  dst_obj = FUNC3 (FUNC6 (ptr_type_node), dst_obj);
  dst_obj = FUNC4 (dst_obj, "unary *");
  /* APPLE LOCAL end radar 6180456 */
  return dst_obj;
}