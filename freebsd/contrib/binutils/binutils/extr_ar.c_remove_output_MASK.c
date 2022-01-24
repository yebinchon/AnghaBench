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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * output_bfd ; 
 int /*<<< orphan*/ * output_file ; 
 int /*<<< orphan*/ * output_filename ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (output_filename != NULL)
    {
      if (output_bfd != NULL)
	FUNC0 (output_bfd);
      if (output_file != NULL)
	FUNC1 (output_file);
      FUNC2 (output_filename);
    }
}