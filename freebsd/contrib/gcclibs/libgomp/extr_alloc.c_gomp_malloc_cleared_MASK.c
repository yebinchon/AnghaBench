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
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 

void *
FUNC2 (size_t size)
{
  void *ret = FUNC0 (1, size);
  if (ret == NULL)
    FUNC1 ("Out of memory allocating %lu bytes", (unsigned long) size);
  return ret;
}