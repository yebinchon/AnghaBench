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
struct c_type_name {int dummy; } ;
struct c_expr {int /*<<< orphan*/  original_code; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_MARK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC2 (struct c_type_name*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

struct c_expr
FUNC4 (struct c_type_name *t)
{
  tree type;
  struct c_expr ret;
  type = FUNC2 (t);
  ret.value = FUNC1 (type);
  ret.original_code = ERROR_MARK;
  FUNC3 (type != error_mark_node
		  ? FUNC0 (type) : false);
  return ret;
}