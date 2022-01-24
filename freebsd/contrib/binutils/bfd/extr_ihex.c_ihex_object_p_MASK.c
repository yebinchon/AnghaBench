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
struct TYPE_10__ {int /*<<< orphan*/  const* xvec; TYPE_1__ tdata; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 unsigned int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ bfd_error_file_truncated ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static const bfd_target *
FUNC10 (bfd *abfd)
{
  void * tdata_save;
  bfd_byte b[9];
  unsigned int i;
  unsigned int type;

  FUNC7 ();

  if (FUNC5 (abfd, (file_ptr) 0, SEEK_SET) != 0)
    return NULL;
  if (FUNC2 (b, (bfd_size_type) 9, abfd) != 9)
    {
      if (FUNC3 () == bfd_error_file_truncated)
	FUNC6 (bfd_error_wrong_format);
      return NULL;
    }

  if (b[0] != ':')
    {
      FUNC6 (bfd_error_wrong_format);
      return NULL;
    }

  for (i = 1; i < 9; i++)
    {
      if (! FUNC1 (b[i]))
	{
	  FUNC6 (bfd_error_wrong_format);
	  return NULL;
	}
    }

  type = FUNC0 (b + 7);
  if (type > 5)
    {
      FUNC6 (bfd_error_wrong_format);
      return NULL;
    }

  /* OK, it looks like it really is an Intel Hex file.  */
  tdata_save = abfd->tdata.any;
  if (! FUNC8 (abfd) || ! FUNC9 (abfd))
    {
      if (abfd->tdata.any != tdata_save && abfd->tdata.any != NULL)
	FUNC4 (abfd, abfd->tdata.any);
      abfd->tdata.any = tdata_save;
      return NULL;
    }

  return abfd->xvec;
}