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
struct objalloc {int dummy; } ;
struct bfd_hash_table {scalar_t__ memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct objalloc*,unsigned int) ; 

void *
FUNC2 (struct bfd_hash_table *table,
		   unsigned int size)
{
  void * ret;

  ret = FUNC1 ((struct objalloc *) table->memory, size);
  if (ret == NULL && size != 0)
    FUNC0 (bfd_error_no_memory);
  return ret;
}