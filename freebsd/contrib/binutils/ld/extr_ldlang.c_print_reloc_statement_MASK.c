#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  addend_exp; TYPE_2__* section; int /*<<< orphan*/ * name; TYPE_5__* howto; TYPE_1__* output_section; scalar_t__ output_offset; } ;
typedef  TYPE_3__ lang_reloc_statement_type ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_size_type ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {scalar_t__ vma; } ;

/* Variables and functions */
 int SECTION_NAME_MAP_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ print_dot ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (lang_reloc_statement_type *reloc)
{
  int i;
  bfd_vma addr;
  bfd_size_type size;

  FUNC3 ();
  for (i = 0; i < SECTION_NAME_MAP_LENGTH; i++)
    FUNC6 ();

  addr = reloc->output_offset;
  if (reloc->output_section != NULL)
    addr += reloc->output_section->vma;

  size = FUNC1 (reloc->howto);

  FUNC4 ("0x%V %W RELOC %s ", addr, size, reloc->howto->name);

  if (reloc->name != NULL)
    FUNC4 ("%s+", reloc->name);
  else
    FUNC4 ("%s+", reloc->section->name);

  FUNC2 (reloc->addend_exp);

  FUNC5 ();

  print_dot = addr + FUNC0 (size);
}