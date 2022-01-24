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
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_5__ {struct TYPE_5__* archive_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC3 (bfd **after_bfd, char *file_name,
			bfd_boolean verbose)
{
  bfd *temp;

  temp = *after_bfd;
  *after_bfd = FUNC2 (file_name, NULL);

  FUNC1 (*after_bfd, file_name);
  FUNC0 (verbose, file_name);

  (*after_bfd)->archive_next = temp;

  return TRUE;
}