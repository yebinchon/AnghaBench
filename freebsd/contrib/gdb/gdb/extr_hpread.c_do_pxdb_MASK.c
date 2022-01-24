#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

void
FUNC3 (bfd *sym_bfd)
{
  /* The following code is HP-specific.  The "right" way of
     doing this is unknown, but we bet would involve a target-
     specific pre-file-load check using a generic mechanism. */

  /* This code will not be executed if the file is not in SOM
     format (i.e. if compiled with gcc) */
  if (FUNC2 (sym_bfd))
    {
      /*This file has not been pre-processed. Preprocess now */

      if (FUNC1 (sym_bfd->filename))
	{
	  /* The call above has changed the on-disk file, 
	     we can close the file anyway, because the
	     symbols will be reread in when the target is run */
	  FUNC0 (sym_bfd);
	}
    }
}