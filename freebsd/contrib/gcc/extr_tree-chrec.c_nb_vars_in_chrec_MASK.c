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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

unsigned 
FUNC3 (tree chrec)
{
  if (chrec == NULL_TREE)
    return 0;

  switch (FUNC1 (chrec))
    {
    case POLYNOMIAL_CHREC:
      return 1 + FUNC3 
	(FUNC2 (chrec, FUNC0 (chrec)));

    default:
      return 0;
    }
}