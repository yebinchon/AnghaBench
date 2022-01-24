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
struct TYPE_7__ {char const* filename; int /*<<< orphan*/  direction; int /*<<< orphan*/ * iostream; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  read_direction ; 

bfd *
FUNC4 (const char *filename, const char *target, void *streamarg)
{
  FILE *stream = streamarg;
  bfd *nbfd;
  const bfd_target *target_vec;

  nbfd = FUNC1 ();
  if (nbfd == NULL)
    return NULL;

  target_vec = FUNC3 (target, nbfd);
  if (target_vec == NULL)
    {
      FUNC0 (nbfd);
      return NULL;
    }

  nbfd->iostream = stream;
  nbfd->filename = filename;
  nbfd->direction = read_direction;

  if (! FUNC2 (nbfd))
    {
      FUNC0 (nbfd);
      return NULL;
    }

  return nbfd;
}