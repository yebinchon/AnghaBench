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
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int e_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EF_MEP_CPU_MASK ; 
 int EF_MEP_INDEX_MASK ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 char** config_names ; 
 char** core_names ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd * abfd, void * ptr)
{
  FILE *   file = (FILE *) ptr;
  flagword flags, partial_flags;

  FUNC1 (abfd != NULL && ptr != NULL);

  /* Print normal ELF private data.  */
  FUNC3 (abfd, ptr);

  flags = FUNC4 (abfd)->e_flags;
  FUNC5 (file, FUNC2("private flags = 0x%lx"), (long)flags);

  partial_flags = (flags & EF_MEP_CPU_MASK) >> 24;
  if (partial_flags < FUNC0 (core_names))
    FUNC5 (file, "  core: %s", core_names[(long)partial_flags]);

  partial_flags = flags & EF_MEP_INDEX_MASK;
  if (partial_flags < FUNC0 (config_names))
    FUNC5 (file, "  me_module: %s", config_names[(long)partial_flags]);

  FUNC6 ('\n', file);

  return TRUE;
}