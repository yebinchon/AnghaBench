#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_target ;
struct TYPE_7__ {char const* filename; int /*<<< orphan*/  direction; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/ * FUNC2 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_direction ; 

bfd *
FUNC5 (const char *filename, const char *target)
{
  bfd *nbfd;
  const bfd_target *target_vec;

  /* nbfd has to point to head of malloc'ed block so that bfd_close may
     reclaim it correctly.  */
  nbfd = FUNC1 ();
  if (nbfd == NULL)
    return NULL;

  target_vec = FUNC2 (target, nbfd);
  if (target_vec == NULL)
    {
      FUNC0 (nbfd);
      return NULL;
    }

  nbfd->filename = filename;
  nbfd->direction = write_direction;

  if (FUNC3 (nbfd) == NULL)
    {
      /* File not writeable, etc.  */
      FUNC4 (bfd_error_system_call);
      FUNC0 (nbfd);
      return NULL;
  }

  return nbfd;
}