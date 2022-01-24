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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (rtx *body, void *x)
{
  rtx y = (rtx) x;

  if (*body == NULL_RTX)
    return y == NULL_RTX;

  /* Return true if a label_ref *BODY refers to label Y.  */
  if (FUNC1 (*body) == LABEL_REF && FUNC2 (y))
    return FUNC3 (*body, 0) == y;

  /* If *BODY is a reference to pool constant traverse the constant.  */
  if (FUNC1 (*body) == SYMBOL_REF
      && FUNC0 (*body))
    return FUNC6 (y, FUNC4 (*body));

  /* By default, compare the RTL expressions.  */
  return FUNC5 (*body, y);
}