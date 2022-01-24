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
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 scalar_t__ HALF_BFD_SIZE_TYPE ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (void*,size_t) ; 

void *
FUNC3 (void *ptr, bfd_size_type nmemb, bfd_size_type size)
{
  void *ret;

  if ((nmemb | size) >= HALF_BFD_SIZE_TYPE
      && size != 0
      && nmemb > ~(bfd_size_type) 0 / size)
    {
      FUNC0 (bfd_error_no_memory);
      return NULL;
    }

  size *= nmemb;

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