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
typedef  int ULONGEST ;

/* Variables and functions */
 int FUNC0 (void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 

__attribute__((used)) static void
FUNC2 (void *out, const void *in)
{
  ULONGEST reg, mem;

  reg = FUNC0 (in, 8);
  mem = ((reg >> 32) & 0xc0000000) | ((reg >> 29) & 0x3fffffff);
  FUNC1 (out, 4, mem);
}