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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline int
FUNC3 (tree fn1, tree fn2)
{
  if (FUNC1 (fn1) || FUNC1 (fn2)
      || FUNC0 (fn1))
    return FUNC2 (fn1, fn2);
  return fn1 == fn2;
}