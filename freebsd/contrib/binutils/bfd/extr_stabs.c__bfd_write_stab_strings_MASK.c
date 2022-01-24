#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stab_info {int /*<<< orphan*/  includes; int /*<<< orphan*/  strings; TYPE_1__* stabstr; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ filepos; } ;
struct TYPE_3__ {scalar_t__ output_offset; TYPE_2__* output_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC7 (bfd *output_bfd, struct stab_info *sinfo)
{
  if (FUNC5 (sinfo->stabstr->output_section))
    /* The section was discarded from the link.  */
    return TRUE;

  FUNC0 ((sinfo->stabstr->output_offset
	       + FUNC3 (sinfo->strings))
	      <= sinfo->stabstr->output_section->size);

  if (FUNC6 (output_bfd,
		(file_ptr) (sinfo->stabstr->output_section->filepos
			    + sinfo->stabstr->output_offset),
		SEEK_SET) != 0)
    return FALSE;

  if (! FUNC1 (output_bfd, sinfo->strings))
    return FALSE;

  /* We no longer need the stabs information.  */
  FUNC2 (sinfo->strings);
  FUNC4 (&sinfo->includes);

  return TRUE;
}