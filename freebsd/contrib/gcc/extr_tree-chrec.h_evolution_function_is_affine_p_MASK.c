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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool 
FUNC5 (tree chrec)
{
  if (chrec == NULL_TREE)
    return false;
  
  switch (FUNC3 (chrec))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC4 (FUNC0 (chrec), 
					     FUNC2 (chrec))
	  && FUNC4 (FUNC1 (chrec),
						FUNC2 (chrec)))
	return true;
      else
	return false;
      
    default:
      return false;
    }
}