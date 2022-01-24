#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_reloc_status_type ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int flags; TYPE_4__* section; } ;
typedef  TYPE_2__ asymbol ;
struct TYPE_7__ {TYPE_1__* output_section; } ;
struct TYPE_5__ {scalar_t__ vma; } ;

/* Variables and functions */
 int BSF_SECTION_SYM ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  bfd_reloc_dangerous ; 
 int /*<<< orphan*/  bfd_reloc_ok ; 
 int /*<<< orphan*/  bfd_reloc_undefined ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC5 (bfd *output_bfd, asymbol *symbol, bfd_boolean relocatable,
		   char **error_message, bfd_vma *pgp)
{
  if (FUNC3 (symbol->section)
      && ! relocatable)
    {
      *pgp = 0;
      return bfd_reloc_undefined;
    }

  *pgp = FUNC1 (output_bfd);
  if (*pgp == 0
      && (! relocatable
	  || (symbol->flags & BSF_SECTION_SYM) != 0))
    {
      if (relocatable)
	{
	  /* Make up a value.  */
	  *pgp = symbol->section->output_section->vma + 0x4000;
	  FUNC2 (output_bfd, *pgp);
	}
      else if (!FUNC4 (output_bfd, pgp))
	{
	  *error_message =
	    (char *) FUNC0("GP relative relocation when _gp not defined");
	  return bfd_reloc_dangerous;
	}
    }

  return bfd_reloc_ok;
}