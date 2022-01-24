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
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_bfd ; 
 int /*<<< orphan*/  output_buffer ; 
 scalar_t__ output_ptr ; 
 scalar_t__ output_ptr_start ; 

__attribute__((used)) static void
FUNC2 (void)
{
  bfd_size_type amt = output_ptr - output_ptr_start;

  if (FUNC1 ((void *) (output_ptr_start), amt, output_bfd) != amt)
    FUNC0 ();
  output_ptr = output_ptr_start;
  output_buffer++;
}