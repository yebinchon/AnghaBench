#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_section ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  text_section ; 

void
FUNC3 (void)
{
  /* Relocation processing may require knowing the VMAs of the sections.
     Since writing to a section will cause the BFD back end to compute the
     VMAs, fake it out here....  */
  bfd_byte b = 0;
  bfd_boolean x = TRUE;
  if (FUNC1 (stdoutput, text_section) != 0)
    x = FUNC2 (stdoutput, text_section, &b, (file_ptr) 0,
				  (bfd_size_type) 1);
  else if (FUNC1 (stdoutput, data_section) != 0)
    x = FUNC2 (stdoutput, data_section, &b, (file_ptr) 0,
				  (bfd_size_type) 1);

  FUNC0 (x);
}