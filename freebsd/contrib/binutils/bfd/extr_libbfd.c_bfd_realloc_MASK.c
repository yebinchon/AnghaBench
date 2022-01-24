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
 void* FUNC2 (void*,size_t) ; 

void *
FUNC3 (void *ptr, bfd_size_type size)
{
  void *ret;

  if (size != (size_t) size)
    {
      FUNC0 (bfd_error_no_memory);
      return NULL;
    }

  if (ptr == NULL)
    ret = FUNC1 ((size_t) size);
  else
    ret = FUNC2 (ptr, (size_t) size);

  if (ret == NULL && (size_t) size != 0)
    FUNC0 (bfd_error_no_memory);

  return ret;
}