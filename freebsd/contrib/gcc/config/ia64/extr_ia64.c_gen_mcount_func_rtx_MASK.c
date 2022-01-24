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
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ mcount_func_rtx ; 

__attribute__((used)) static rtx
FUNC1 (void)
{
  if (!mcount_func_rtx)
    mcount_func_rtx = FUNC0 ("_mcount");
  return mcount_func_rtx;
}