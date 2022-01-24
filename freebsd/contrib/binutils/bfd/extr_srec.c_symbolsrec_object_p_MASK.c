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
struct TYPE_9__ {void* any; } ;
struct TYPE_10__ {scalar_t__ symcount; int /*<<< orphan*/  const* xvec; int /*<<< orphan*/  flags; TYPE_1__ tdata; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  HAS_SYMS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static const bfd_target *
FUNC7 (bfd *abfd)
{
  void * tdata_save;
  char b[2];

  FUNC4 ();

  if (FUNC2 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC0 (b, (bfd_size_type) 2, abfd) != 2)
    return NULL;

  if (b[0] != '$' || b[1] != '$')
    {
      FUNC3 (bfd_error_wrong_format);
      return NULL;
    }

  tdata_save = abfd->tdata.any;
  if (! FUNC5 (abfd) || ! FUNC6 (abfd))
    {
      if (abfd->tdata.any != tdata_save && abfd->tdata.any != NULL)
	FUNC1 (abfd, abfd->tdata.any);
      abfd->tdata.any = tdata_save;
      return NULL;
    }

  if (abfd->symcount > 0)
    abfd->flags |= HAS_SYMS;

  return abfd->xvec;
}