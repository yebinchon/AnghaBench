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
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd *abfd, void *dhandle, bfd_boolean *pfound)
{
  asection *dsec;
  bfd_size_type size;
  bfd_byte *contents;

  /* The BFD backend puts the debugging information into a section
     named .debug.  */

  dsec = FUNC0 (abfd, ".debug");
  if (dsec == NULL)
    return TRUE;

  size = FUNC2 (abfd, dsec);
  contents = (bfd_byte *) FUNC5 (size);
  if (! FUNC1 (abfd, dsec, contents, 0, size))
    return FALSE;

  if (! FUNC4 (dhandle, abfd, contents, size))
    return FALSE;

  FUNC3 (contents);

  *pfound = TRUE;

  return TRUE;
}