#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct external_exec {int dummy; } ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int bfd_boolean ;
struct TYPE_12__ {int /*<<< orphan*/  output_has_begun; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_13__ {scalar_t__ filepos; } ;
typedef  TYPE_2__ asection ;
struct TYPE_15__ {scalar_t__ filepos; } ;
struct TYPE_14__ {int filepos; scalar_t__ size; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (void*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *abfd,
			    asection *section,
			    const void * location,
			    file_ptr offset,
			    bfd_size_type count)
{
  if (! abfd->output_has_begun)
    {
      /* Set by bfd.c handler.  */
      if (! FUNC0 (abfd))
	return FALSE;

      FUNC4 (abfd)->filepos = sizeof (struct external_exec);
      FUNC3 (abfd)->filepos = FUNC4 (abfd)->filepos
	+  FUNC4 (abfd)->size;
    }

  /* Regardless, once we know what we're doing, we might as well get going.  */
  if (FUNC2 (abfd, section->filepos + offset, SEEK_SET) != 0)
    return FALSE;

  if (count == 0)
    return TRUE;

  return FUNC1 ((void *) location, count, abfd) == count;
}