#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  char bfd_byte ;
struct TYPE_9__ {void* any; } ;
struct TYPE_10__ {scalar_t__ symcount; int /*<<< orphan*/  const* xvec; int /*<<< orphan*/  flags; TYPE_1__ tdata; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  HAS_SYMS ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static const bfd_target *
FUNC8 (bfd *abfd)
{
  void * tdata_save;
  bfd_byte b[4];

  FUNC5 ();

  if (FUNC3 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC1 (b, (bfd_size_type) 4, abfd) != 4)
    return NULL;

  if (b[0] != 'S' || !FUNC0 (b[1]) || !FUNC0 (b[2]) || !FUNC0 (b[3]))
    {
      FUNC4 (bfd_error_wrong_format);
      return NULL;
    }

  tdata_save = abfd->tdata.any;
  if (! FUNC6 (abfd) || ! FUNC7 (abfd))
    {
      if (abfd->tdata.any != tdata_save && abfd->tdata.any != NULL)
	FUNC2 (abfd, abfd->tdata.any);
      abfd->tdata.any = tdata_save;
      return NULL;
    }

  if (abfd->symcount > 0)
    abfd->flags |= HAS_SYMS;

  return abfd->xvec;
}