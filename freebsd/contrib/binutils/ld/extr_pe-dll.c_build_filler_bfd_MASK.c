#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * the_bfd; } ;
typedef  TYPE_1__ lang_input_statement_type ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_KEEP ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * edata_s ; 
 int /*<<< orphan*/  edata_sz ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * filler_bfd ; 
 TYPE_1__* FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang_input_file_is_fake_enum ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  output_bfd ; 
 int /*<<< orphan*/ * reloc_s ; 

__attribute__((used)) static void
FUNC10 (int include_edata)
{
  lang_input_statement_type *filler_file;
  filler_file = FUNC8 ("dll stuff",
				     lang_input_file_is_fake_enum,
				     NULL);
  filler_file->the_bfd = filler_bfd = FUNC0 ("dll stuff", output_bfd);
  if (filler_bfd == NULL
      || !FUNC4 (filler_bfd,
			     FUNC1 (output_bfd),
			     FUNC2 (output_bfd)))
    {
      FUNC7 ("%X%P: can not create BFD: %E\n");
      return;
    }

  if (include_edata)
    {
      edata_s = FUNC3 (filler_bfd, ".edata");
      if (edata_s == NULL
	  || !FUNC5 (filler_bfd, edata_s,
				     (SEC_HAS_CONTENTS
				      | SEC_ALLOC
				      | SEC_LOAD
				      | SEC_KEEP
				      | SEC_IN_MEMORY)))
	{
	  FUNC7 ("%X%P: can not create .edata section: %E\n");
	  return;
	}
      FUNC6 (filler_bfd, edata_s, edata_sz);
    }

  reloc_s = FUNC3 (filler_bfd, ".reloc");
  if (reloc_s == NULL
      || !FUNC5 (filler_bfd, reloc_s,
				 (SEC_HAS_CONTENTS
				  | SEC_ALLOC
				  | SEC_LOAD
				  | SEC_KEEP
				  | SEC_IN_MEMORY)))
    {
      FUNC7 ("%X%P: can not create .reloc section: %E\n");
      return;
    }

  FUNC6 (filler_bfd, reloc_s, 0);

  FUNC9 (filler_file);
}