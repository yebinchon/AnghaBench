#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sec_ptr ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef  TYPE_2__ ieee_per_section_type ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int SEC_DEBUGGING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,void*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd,
			   sec_ptr section,
			   void * location,
			   file_ptr offset,
			   bfd_size_type count)
{
  ieee_per_section_type *p = FUNC1 (section);
  if ((section->flags & SEC_DEBUGGING) != 0)
    return FUNC0 (abfd, section, location,
					      offset, count);
  FUNC2 (abfd);
  (void) FUNC3 ((void *) location, (void *) (p->data + offset), (unsigned) count);
  return TRUE;
}