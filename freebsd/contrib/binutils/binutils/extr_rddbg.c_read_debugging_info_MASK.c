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
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_aout_flavour ; 
 scalar_t__ bfd_target_coff_flavour ; 
 scalar_t__ bfd_target_ieee_flavour ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,long,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,long,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,long,void*,scalar_t__*) ; 

void *
FUNC9 (bfd *abfd, asymbol **syms, long symcount)
{
  void *dhandle;
  bfd_boolean found;

  dhandle = FUNC3 ();
  if (dhandle == NULL)
    return NULL;

  if (! FUNC7 (abfd, syms, symcount, dhandle,
					   &found))
    return NULL;

  if (FUNC2 (abfd) == bfd_target_aout_flavour)
    {
      if (! FUNC8 (abfd, syms, symcount, dhandle,
					      &found))
	return NULL;
    }

  if (FUNC2 (abfd) == bfd_target_ieee_flavour)
    {
      if (! FUNC6 (abfd, dhandle, &found))
	return NULL;
    }

  /* Try reading the COFF symbols if we didn't find any stabs in COFF
     sections.  */
  if (! found
      && FUNC2 (abfd) == bfd_target_coff_flavour
      && symcount > 0)
    {
      if (! FUNC5 (abfd, syms, symcount, dhandle))
	return NULL;
      found = TRUE;
    }

  if (! found)
    {
      FUNC4 (FUNC0("%s: no recognized debugging information"),
		 FUNC1 (abfd));
      return NULL;
    }

  return dhandle;
}