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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,char*) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  bfd_error_file_truncated ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,char*) ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd,
	       unsigned int lineno,
	       int c,
	       bfd_boolean error)
{
  if (c == EOF)
    {
      if (! error)
	FUNC3 (bfd_error_file_truncated);
    }
  else
    {
      char buf[10];

      if (! FUNC0 (c))
	FUNC4 (buf, "\\%03o", (unsigned int) c);
      else
	{
	  buf[0] = c;
	  buf[1] = '\0';
	}
      FUNC2)
	(FUNC1("%B:%d: Unexpected character `%s' in S-record file\n"),
	 abfd, lineno, buf);
      FUNC3 (bfd_error_bad_value);
    }
}