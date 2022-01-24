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
typedef  scalar_t__ bfd_size_type ;
struct TYPE_2__ {unsigned int split_by_reloc; scalar_t__ split_by_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ bfd_error_no_error ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  build_link_order ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_info ; 
 int /*<<< orphan*/  output_bfd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8 (void)
{
  /* Reset error indicator, which can typically something like invalid
     format from opening up the .o files.  */
  FUNC3 (bfd_error_no_error);
  FUNC5 (build_link_order);

  if (config.split_by_reloc != (unsigned) -1
      || config.split_by_file != (bfd_size_type) -1)
    FUNC6 (output_bfd, &link_info);
  if (!FUNC1 (output_bfd, &link_info))
    {
      /* If there was an error recorded, print it out.  Otherwise assume
	 an appropriate error message like unknown symbol was printed
	 out.  */

      if (FUNC2 () != bfd_error_no_error)
	FUNC4 (FUNC0("%F%P: final link failed: %E\n"));
      else
	FUNC7 (1);
    }
}