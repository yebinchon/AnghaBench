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
 int ADDR_EXPR ; 
 int CONVERT_EXPR ; 
 char const* FUNC0 (char*) ; 
 scalar_t__ RFmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2 (int op, tree type)
{
  /* Reject operations on __fpreg other than unary + or &.  */
  if (FUNC1 (type) == RFmode
      && op != CONVERT_EXPR
      && op != ADDR_EXPR)
    return FUNC0("invalid operation on %<__fpreg%>");
  return NULL;
}