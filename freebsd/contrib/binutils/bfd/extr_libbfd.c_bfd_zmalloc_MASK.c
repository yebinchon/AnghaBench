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
typedef  size_t bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 

void *
FUNC3 (bfd_size_type size)
{
  void *ptr;

  if (size != (size_t) size)
    {
      FUNC0 (bfd_error_no_memory);
      return NULL;
    }

  ptr = FUNC1 ((size_t) size);

  if ((size_t) size != 0)
    {
      if (ptr == NULL)
	FUNC0 (bfd_error_no_memory);
      else
	FUNC2 (ptr, 0, (size_t) size);
    }

  return ptr;
}