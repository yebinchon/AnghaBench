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
 unsigned long bytes_used ; 
 int /*<<< orphan*/  gcse_obstack ; 
 void* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void *
FUNC1 (unsigned long size)
{
  bytes_used += size;
  return FUNC0 (&gcse_obstack, size);
}