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
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ optimize ; 

__attribute__((used)) static rtx
FUNC2 (rtx x)
{
  return (optimize
          || x == 0
	   /* Only registers can be subtargets.  */
	   || !FUNC1 (x)
	   /* Don't use hard regs to avoid extending their life.  */
	   || FUNC0 (x) < FIRST_PSEUDO_REGISTER
	  ? 0 : x);
}