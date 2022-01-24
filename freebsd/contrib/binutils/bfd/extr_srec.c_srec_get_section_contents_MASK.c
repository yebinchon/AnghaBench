#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/ * used_by_bfd; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd,
			   asection *section,
			   void * location,
			   file_ptr offset,
			   bfd_size_type count)
{
  if (section->used_by_bfd == NULL)
    {
      section->used_by_bfd = FUNC0 (abfd, section->size);
      if (section->used_by_bfd == NULL && section->size != 0)
	return FALSE;

      if (! FUNC2 (abfd, section, section->used_by_bfd))
	return FALSE;
    }

  FUNC1 (location, (bfd_byte *) section->used_by_bfd + offset,
	  (size_t) count);

  return TRUE;
}