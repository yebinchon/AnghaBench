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
 char const* FUNC0 (char*) ; 
 scalar_t__ RFmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOIDmode ; 

__attribute__((used)) static const char *
FUNC2 (tree fromtype, tree totype)
{
  /* Reject nontrivial conversion to or from __fpreg.  */
  if (FUNC1 (fromtype) == RFmode
      && FUNC1 (totype) != RFmode
      && FUNC1 (totype) != VOIDmode)
    return FUNC0("invalid conversion from %<__fpreg%>");
  if (FUNC1 (totype) == RFmode
      && FUNC1 (fromtype) != RFmode)
    return FUNC0("invalid conversion to %<__fpreg%>");
  return NULL;
}