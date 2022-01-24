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
typedef  int /*<<< orphan*/  alloc_type ;

/* Variables and functions */
 int BYTES_PER_ALLOC_BIT ; 
 int GGC_PAGE_SIZE ; 

__attribute__((used)) static inline unsigned int
FUNC0 (const void *object)
{
  return (((size_t) object & (GGC_PAGE_SIZE - 1))
	  / (8 * sizeof (alloc_type) * BYTES_PER_ALLOC_BIT));
}