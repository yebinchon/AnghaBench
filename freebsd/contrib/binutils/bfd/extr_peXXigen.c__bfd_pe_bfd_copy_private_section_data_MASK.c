#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pei_section_tdata {int dummy; } ;
struct coff_section_tdata {int dummy; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int /*<<< orphan*/ * used_by_bfd; } ;
typedef  TYPE_1__ asection ;
struct TYPE_10__ {int /*<<< orphan*/ * tdata; } ;
struct TYPE_9__ {int /*<<< orphan*/  pe_flags; int /*<<< orphan*/  virt_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_coff_flavour ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

bfd_boolean
FUNC4 (bfd *ibfd,
				       asection *isec,
				       bfd *obfd,
				       asection *osec)
{
  if (FUNC0 (ibfd) != bfd_target_coff_flavour
      || FUNC0 (obfd) != bfd_target_coff_flavour)
    return TRUE;

  if (FUNC2 (ibfd, isec) != NULL
      && FUNC3 (ibfd, isec) != NULL)
    {
      if (FUNC2 (obfd, osec) == NULL)
	{
	  bfd_size_type amt = sizeof (struct coff_section_tdata);
	  osec->used_by_bfd = FUNC1 (obfd, amt);
	  if (osec->used_by_bfd == NULL)
	    return FALSE;
	}

      if (FUNC3 (obfd, osec) == NULL)
	{
	  bfd_size_type amt = sizeof (struct pei_section_tdata);
	  FUNC2 (obfd, osec)->tdata = FUNC1 (obfd, amt);
	  if (FUNC2 (obfd, osec)->tdata == NULL)
	    return FALSE;
	}

      FUNC3 (obfd, osec)->virt_size =
	FUNC3 (ibfd, isec)->virt_size;
      FUNC3 (obfd, osec)->pe_flags =
	FUNC3 (ibfd, isec)->pe_flags;
    }

  return TRUE;
}