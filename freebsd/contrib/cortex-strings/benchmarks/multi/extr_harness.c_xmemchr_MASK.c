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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,size_t) ; 

__attribute__((used)) static void FUNC2(void *dest, void *src, size_t n)
{
  /* Put the character at the end of the block */
  ((char *)src)[n-1] = 32;
  FUNC0(FUNC1(src, 32, n));
}