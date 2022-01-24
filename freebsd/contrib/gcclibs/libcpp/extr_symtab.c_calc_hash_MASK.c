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
 unsigned int FUNC0 (unsigned int,size_t) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC2 (const unsigned char *str, size_t len)
{
  size_t n = len;
  unsigned int r = 0;

  while (n--)
    r = FUNC1 (r, *str++);

  return FUNC0 (r, len);
}