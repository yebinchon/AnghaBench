#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_15__ {int flags; TYPE_2__* section; } ;
typedef  TYPE_3__ asymbol ;
struct TYPE_16__ {scalar_t__ output_offset; } ;
typedef  TYPE_4__ asection ;
struct TYPE_17__ {scalar_t__ addend; int /*<<< orphan*/  address; } ;
typedef  TYPE_5__ arelent ;
struct TYPE_14__ {TYPE_1__* output_section; } ;
struct TYPE_13__ {int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int BSF_SECTION_SYM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_reloc_ok ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC2 (bfd *abfd,
			 arelent *reloc_entry,
			 asymbol *symbol,
			 void * data,
			 asection *input_section,
			 bfd *output_bfd,
			 char **error_message)
{
  bfd_boolean relocateable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  if (output_bfd != (bfd *) NULL
      && (symbol->flags & BSF_SECTION_SYM) == 0 && reloc_entry->addend == 0)
    {
      reloc_entry->address += input_section->output_offset;
      return bfd_reloc_ok;
    }
  if (output_bfd != (bfd *) NULL)
    relocateable = TRUE;
  else
    {
      relocateable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = FUNC0 (output_bfd, symbol, relocateable, error_message, &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return FUNC1 (abfd, symbol, reloc_entry,
                                         input_section, relocateable, data, gp);
}