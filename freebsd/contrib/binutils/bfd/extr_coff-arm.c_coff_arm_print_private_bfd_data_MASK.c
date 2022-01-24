#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC7 (char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (bfd * abfd, void * ptr)
{
  FILE * file = (FILE *) ptr;

  FUNC3 (abfd != NULL && ptr != NULL);

  /* xgettext:c-format */
  FUNC9 (file, FUNC7("private flags = %x:"), FUNC8 (abfd)->flags);

  if (FUNC2 (abfd))
    {
      /* xgettext: APCS is ARM Procedure Call Standard, it should not be translated.  */
      FUNC9 (file, " [APCS-%d]", FUNC0 (abfd) ? 26 : 32);

      if (FUNC1 (abfd))
	FUNC9 (file, FUNC7(" [floats passed in float registers]"));
      else
	FUNC9 (file, FUNC7(" [floats passed in integer registers]"));

      if (FUNC6 (abfd))
	FUNC9 (file, FUNC7(" [position independent]"));
      else
	FUNC9 (file, FUNC7(" [absolute position]"));
    }

  if (! FUNC5 (abfd))
    FUNC9 (file, FUNC7(" [interworking flag not initialised]"));
  else if (FUNC4 (abfd))
    FUNC9 (file, FUNC7(" [interworking supported]"));
  else
    FUNC9 (file, FUNC7(" [interworking not supported]"));

  FUNC10 ('\n', file);

  return TRUE;
}