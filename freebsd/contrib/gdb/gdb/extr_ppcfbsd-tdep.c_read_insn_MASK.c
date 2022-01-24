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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static unsigned int
FUNC1 (CORE_ADDR pc)
{
  unsigned char buf[4];

  FUNC0 (pc, buf, 4);
  return (buf[0] << 24) | (buf[1] << 16) | (buf[2] << 8) | buf[3];
}