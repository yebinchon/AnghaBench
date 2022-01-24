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
 int THUMB_SIZE ; 
 unsigned long FUNC0 (char*,int) ; 

__attribute__((used)) static unsigned long
FUNC1 (char * buf)
{
  unsigned long insn;
  insn = FUNC0 (buf, THUMB_SIZE) << 16;
  insn |= FUNC0 (buf + THUMB_SIZE, THUMB_SIZE);

  return insn;
}