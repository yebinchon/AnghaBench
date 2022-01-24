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
 void* FUNC0 (void*,size_t) ; 

void
FUNC1 (void **old_vect, size_t * size, size_t min_size, int element_size)
{
  if (*size < min_size)
    {
      *size *= 2;
      if (*size < min_size)
	*size = min_size;
      *old_vect = FUNC0 (*old_vect, *size * element_size);
    }
}