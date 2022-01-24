#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* archive_next; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_7__ {TYPE_1__* archive_head; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* obfd ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int verbose ; 

void
FUNC6 (void)
{
  if (!obfd)
    {
      FUNC3 (stderr, FUNC0("%s: no open output archive\n"), program_name);
      FUNC4 ();
    }
  else
    {
      bfd *abfd;

      outfile = stdout;
      verbose =1 ;
      FUNC5 (FUNC0("Current open archive is %s\n"), FUNC2 (obfd));

      for (abfd = obfd->archive_head;
	   abfd != (bfd *)NULL;
	   abfd = abfd->archive_next)
	FUNC1 (abfd, (bfd *) NULL);
    }
}