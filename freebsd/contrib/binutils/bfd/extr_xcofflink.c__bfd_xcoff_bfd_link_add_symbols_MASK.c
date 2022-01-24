#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {TYPE_1__* hash; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_15__ {int flags; int archive_pass; int /*<<< orphan*/  xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_14__ {int /*<<< orphan*/  creator; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/  (*) (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/ *)) ; 
#define  bfd_archive 129 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
#define  bfd_object 128 
 TYPE_2__* FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC8 (bfd *abfd, struct bfd_link_info *info)
{
  switch (FUNC2 (abfd))
    {
    case bfd_object:
      return FUNC6 (abfd, info);

    case bfd_archive:
      /* If the archive has a map, do the usual search.  We then need
	 to check the archive for dynamic objects, because they may not
	 appear in the archive map even though they should, perhaps, be
	 included.  If the archive has no map, we just consider each object
	 file in turn, since that apparently is what the AIX native linker
	 does.  */
      if (FUNC3 (abfd))
	{
	  if (! (FUNC0
		 (abfd, info, xcoff_link_check_archive_element)))
	    return FALSE;
	}

      {
	bfd *member;

	member = FUNC4 (abfd, NULL);
	while (member != NULL)
	  {
	    if (FUNC1 (member, bfd_object)
		&& (info->hash->creator == member->xvec)
		&& (! FUNC3 (abfd) || (member->flags & DYNAMIC) != 0))
	      {
		bfd_boolean needed;

		if (! FUNC7 (member, info,
							&needed))
		  return FALSE;
		if (needed)
		  member->archive_pass = -1;
	      }
	    member = FUNC4 (abfd, member);
	  }
      }

      return TRUE;

    default:
      FUNC5 (bfd_error_wrong_format);
      return FALSE;
    }
}