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
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC1 (bfd *abfd,
			     asection *section,
			     void * locationp,
			     file_ptr offset,
			     bfd_size_type count)
{
  if (section->flags & (SEC_LOAD | SEC_ALLOC))
    {
      FUNC0 (abfd, section, locationp, offset, count, TRUE);
      return TRUE;
    }

  return FALSE;
}