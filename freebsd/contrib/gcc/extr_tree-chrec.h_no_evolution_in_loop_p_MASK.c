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
 scalar_t__ FUNC0 (scalar_t__,unsigned int) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ chrec_not_analyzed_yet ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC3 (tree chrec, unsigned loop_num, bool *res)
{
  tree scev;
  
  if (chrec == chrec_not_analyzed_yet
      || chrec == chrec_dont_know
      || FUNC0 (chrec, loop_num))
    return false;

  scev = FUNC1 (chrec, loop_num);
  *res = !FUNC2 (scev);
  return true;
}