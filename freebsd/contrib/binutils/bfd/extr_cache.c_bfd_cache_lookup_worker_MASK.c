#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum cache_flag { ____Placeholder_cache_flag } cache_flag ;
struct TYPE_9__ {int flags; int /*<<< orphan*/ * iostream; int /*<<< orphan*/  where; struct TYPE_9__* my_archive; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BFD_IN_MEMORY ; 
 int CACHE_NO_OPEN ; 
 int CACHE_NO_SEEK ; 
 int CACHE_NO_SEEK_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* bfd_last_cache ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC11 (bfd *abfd, enum cache_flag flag)
{
  bfd *orig_bfd = abfd;
  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    FUNC2 ();

  if (abfd->my_archive)
    abfd = abfd->my_archive;

  if (abfd->iostream != NULL)
    {
      /* Move the file to the start of the cache.  */
      if (abfd != bfd_last_cache)
	{
	  FUNC9 (abfd);
	  FUNC7 (abfd);
	}
      return (FILE *) abfd->iostream;
    }

  if (flag & CACHE_NO_OPEN)
    return NULL;

  if (FUNC5 (abfd) == NULL)
    ;
  else if (!(flag & CACHE_NO_SEEK)
	   && FUNC8 ((FILE *) abfd->iostream, abfd->where, SEEK_SET) != 0
	   && !(flag & CACHE_NO_SEEK_ERROR))
    FUNC6 (bfd_error_system_call);
  else
    return (FILE *) abfd->iostream;

  FUNC1) (FUNC0("reopening %B: %s\n"),
			 orig_bfd, FUNC3 (FUNC4 ()));
  return NULL;
}