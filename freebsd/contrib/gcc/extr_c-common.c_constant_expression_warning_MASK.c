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
 scalar_t__ COMPLEX_CST ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VECTOR_CST ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ warn_overflow ; 

void
FUNC3 (tree value)
{
  if ((FUNC0 (value) == INTEGER_CST || FUNC0 (value) == REAL_CST
       || FUNC0 (value) == VECTOR_CST
       || FUNC0 (value) == COMPLEX_CST)
      && FUNC1 (value)
      && warn_overflow
      && pedantic)
    FUNC2 ("overflow in constant expression");
}