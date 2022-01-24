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
 int /*<<< orphan*/  frame_cache_obstack ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void *
FUNC2 (unsigned long size)
{
  void *data = FUNC1 (&frame_cache_obstack, size);
  FUNC0 (data, 0, size);
  return data;
}