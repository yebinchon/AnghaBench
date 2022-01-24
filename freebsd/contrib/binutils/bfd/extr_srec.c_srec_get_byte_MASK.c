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
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_truncated ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int
FUNC2 (bfd *abfd, bfd_boolean *errorptr)
{
  bfd_byte c;

  if (FUNC0 (&c, (bfd_size_type) 1, abfd) != 1)
    {
      if (FUNC1 () != bfd_error_file_truncated)
	*errorptr = TRUE;
      return EOF;
    }

  return (int) (c & 0xff);
}