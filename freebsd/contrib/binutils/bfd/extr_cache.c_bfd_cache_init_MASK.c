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
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {int /*<<< orphan*/ * iovec; int /*<<< orphan*/ * iostream; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BFD_CACHE_MAX_OPEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  cache_iovec ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ open_files ; 

bfd_boolean
FUNC3 (bfd *abfd)
{
  FUNC0 (abfd->iostream != NULL);
  if (open_files >= BFD_CACHE_MAX_OPEN)
    {
      if (! FUNC1 ())
	return FALSE;
    }
  abfd->iovec = &cache_iovec;
  FUNC2 (abfd);
  ++open_files;
  return TRUE;
}