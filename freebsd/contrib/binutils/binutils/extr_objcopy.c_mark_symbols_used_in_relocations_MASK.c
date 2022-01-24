#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_2__* sec_ptr ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_16__ {TYPE_1__** sym_ptr_ptr; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_18__ {TYPE_1__* symbol; } ;
struct TYPE_17__ {TYPE_1__* symbol; } ;
struct TYPE_15__ {int /*<<< orphan*/ * output_section; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;
struct TYPE_13__ {TYPE_1__* symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_KEEP ; 
 TYPE_12__* bfd_abs_section_ptr ; 
 long FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__**,int /*<<< orphan*/ **) ; 
 TYPE_9__* bfd_com_section_ptr ; 
 scalar_t__ bfd_error_invalid_operation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_7__* bfd_und_section_ptr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 TYPE_3__** FUNC6 (long) ; 

__attribute__((used)) static void
FUNC7 (bfd *ibfd, sec_ptr isection, void *symbolsarg)
{
  asymbol **symbols = symbolsarg;
  long relsize;
  arelent **relpp;
  long relcount, i;

  /* Ignore an input section with no corresponding output section.  */
  if (isection->output_section == NULL)
    return;

  relsize = FUNC4 (ibfd, isection);
  if (relsize < 0)
    {
      /* Do not complain if the target does not support relocations.  */
      if (relsize == -1 && FUNC2 () == bfd_error_invalid_operation)
	return;
      FUNC1 (FUNC3 (ibfd));
    }

  if (relsize == 0)
    return;

  relpp = FUNC6 (relsize);
  relcount = FUNC0 (ibfd, isection, relpp, symbols);
  if (relcount < 0)
    FUNC1 (FUNC3 (ibfd));

  /* Examine each symbol used in a relocation.  If it's not one of the
     special bfd section symbols, then mark it with BSF_KEEP.  */
  for (i = 0; i < relcount; i++)
    {
      if (*relpp[i]->sym_ptr_ptr != bfd_com_section_ptr->symbol
	  && *relpp[i]->sym_ptr_ptr != bfd_abs_section_ptr->symbol
	  && *relpp[i]->sym_ptr_ptr != bfd_und_section_ptr->symbol)
	(*relpp[i]->sym_ptr_ptr)->flags |= BSF_KEEP;
    }

  if (relpp != NULL)
    FUNC5 (relpp);
}