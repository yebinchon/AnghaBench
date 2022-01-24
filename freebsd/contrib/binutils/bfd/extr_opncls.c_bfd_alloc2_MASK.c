#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long bfd_size_type ;
struct TYPE_3__ {int /*<<< orphan*/  memory; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 unsigned long HALF_BFD_SIZE_TYPE ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

void *
FUNC2 (bfd *abfd, bfd_size_type nmemb, bfd_size_type size)
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

  if (size != (unsigned long) size)
    {
      FUNC0 (bfd_error_no_memory);
      return NULL;
    }

  ret = FUNC1 (abfd->memory, (unsigned long) size);
  if (ret == NULL)
    FUNC0 (bfd_error_no_memory);
  return ret;
}