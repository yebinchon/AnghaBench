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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 

void
FUNC2 (int bdm_regno, CORE_ADDR reg)
{
  unsigned char buf[4];

  FUNC1 (buf, 4, reg);

  FUNC0 (bdm_regno, buf, 4);
}