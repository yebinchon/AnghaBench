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
struct TYPE_2__ {int e_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EF_SCORE_FIXDEP ; 
 int EF_SCORE_PIC ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd *abfd, void * ptr)
{
  FILE *file = (FILE *) ptr;

  FUNC0 (abfd != NULL && ptr != NULL);

  /* Print normal ELF private data.  */
  FUNC2 (abfd, ptr);

  /* xgettext:c-format */
  FUNC4 (file, FUNC1("private flags = %lx:"), FUNC3 (abfd)->e_flags);
  if (FUNC3 (abfd)->e_flags & EF_SCORE_PIC)
    {
      FUNC4 (file, FUNC1(" [pic]"));
    }
  if (FUNC3 (abfd)->e_flags & EF_SCORE_FIXDEP)
    {
      FUNC4 (file, FUNC1(" [fix dep]"));
    }
  FUNC5 ('\n', file);

  return TRUE;
}