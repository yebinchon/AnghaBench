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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (tree exp)
{
  if (FUNC0 (exp) == CONSTRUCTOR)

    {
      HOST_WIDE_INT nz_elts, count;
      bool must_clear;

      FUNC1 (exp, &nz_elts, &count, &must_clear);
      return nz_elts == 0;
    }

  return FUNC2 (exp);
}