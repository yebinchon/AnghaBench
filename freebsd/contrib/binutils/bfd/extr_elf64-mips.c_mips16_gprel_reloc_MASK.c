#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_17__ {int flags; TYPE_2__* section; } ;
typedef  TYPE_4__ asymbol ;
struct TYPE_18__ {int output_offset; } ;
typedef  TYPE_5__ asection ;
struct TYPE_19__ {int address; TYPE_3__* howto; } ;
typedef  TYPE_6__ arelent ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_15__ {TYPE_1__* output_section; } ;
struct TYPE_14__ {int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int BSF_LOCAL ; 
 int BSF_SECTION_SYM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_reloc_ok ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC4 (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
		    void *data, asection *input_section, bfd *output_bfd,
		    char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_byte *location;
  bfd_vma gp;

  /* If we're relocating, and this is an external symbol, we don't want
     to change anything.  */
  if (output_bfd != NULL
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      reloc_entry->address += input_section->output_offset;
      return bfd_reloc_ok;
    }

  if (output_bfd != NULL)
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = FUNC3 (output_bfd, symbol, relocatable, error_message,
			     &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  location = (bfd_byte *) data + reloc_entry->address;
  FUNC1 (abfd, reloc_entry->howto->type, FALSE,
				   location);
  ret = FUNC2 (abfd, symbol, reloc_entry,
				       input_section, relocatable,
				       data, gp);
  FUNC0 (abfd, reloc_entry->howto->type, !relocatable,
				 location);

  return ret;
}