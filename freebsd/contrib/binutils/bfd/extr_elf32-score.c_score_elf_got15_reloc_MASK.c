#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ asymbol ;
typedef  int /*<<< orphan*/  asection ;
typedef  int /*<<< orphan*/  arelent ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC5 (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
		       void *data, asection *input_section,
		       bfd *output_bfd, char **error_message)
{
  if ((symbol->flags & (BSF_GLOBAL | BSF_WEAK)) != 0
      || FUNC3 (FUNC1 (symbol))
      || FUNC2 (FUNC1 (symbol)))
    /* The relocation is against a global symbol.  */
    return FUNC0 (abfd, reloc_entry, symbol, data,
				  input_section, output_bfd,
				  error_message);

  return FUNC4 (abfd, reloc_entry, symbol, data,
			       input_section, output_bfd, error_message);
}