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

/* Variables and functions */
 unsigned int FAIL ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC1 (unsigned int val)
{
  unsigned int a, i;

  for (i = 0; i < 32; i += 2)
    if ((a = FUNC0 (val, i)) <= 0xff)
      return a | (i << 7); /* 12-bit pack: [shift-cnt,const].  */

  return FAIL;
}