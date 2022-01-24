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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static inline bool
FUNC2 (rtx reg)
{
  unsigned regno = FUNC0 (reg);
  return regno >= FIRST_PSEUDO_REGISTER || FUNC1 (regno);
}