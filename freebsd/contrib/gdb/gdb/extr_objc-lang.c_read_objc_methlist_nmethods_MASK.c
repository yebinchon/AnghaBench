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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static 
unsigned long FUNC1 (CORE_ADDR addr)
{
  return FUNC0 (addr + 4, 4);
}