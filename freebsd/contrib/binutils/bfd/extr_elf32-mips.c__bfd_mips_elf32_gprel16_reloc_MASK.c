#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_14__ {int flags; TYPE_3__* section; } ;
typedef  TYPE_4__ asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_15__ {TYPE_1__* howto; } ;
typedef  TYPE_5__ arelent ;
struct TYPE_13__ {TYPE_2__* output_section; } ;
struct TYPE_12__ {int /*<<< orphan*/ * owner; } ;
struct TYPE_11__ {scalar_t__ type; } ;

/* Variables and functions */
 int BSF_LOCAL ; 
 int BSF_SECTION_SYM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ R_MIPS_LITERAL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_reloc_ok ; 
 scalar_t__ bfd_reloc_outofrange ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

bfd_reloc_status_type
FUNC3 (bfd *abfd, arelent *reloc_entry,
			       asymbol *symbol, void *data,
			       asection *input_section, bfd *output_bfd,
			       char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  /* R_MIPS_LITERAL relocations are defined for local symbols only.  */
  if (reloc_entry->howto->type == R_MIPS_LITERAL
      && output_bfd != NULL
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
	FUNC0("literal relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  if (output_bfd != NULL)
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = FUNC2 (output_bfd, symbol, relocatable, error_message,
			   &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return FUNC1 (abfd, symbol, reloc_entry,
					input_section, relocatable,
					data, gp);
}