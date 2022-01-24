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
typedef  size_t bfd_error_type ;
struct TYPE_2__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * bfd_errmsgs ; 
 size_t bfd_error_invalid_error_code ; 
 size_t bfd_error_on_input ; 
 size_t bfd_error_system_call ; 
 TYPE_1__* input_bfd ; 
 size_t input_error ; 
 char const* FUNC2 (int) ; 

const char *
FUNC3 (bfd_error_type error_tag)
{
#ifndef errno
  extern int errno;
#endif
  if (error_tag == bfd_error_on_input)
    {
      char *buf;
      const char *msg = FUNC3 (input_error);

      if (FUNC1 (&buf, FUNC0(bfd_errmsgs [error_tag]), input_bfd->filename, msg)
	  != -1)
	return buf;

      /* Ick, what to do on out of memory?  */
      return msg;
    }

  if (error_tag == bfd_error_system_call)
    return FUNC2 (errno);

  if (error_tag > bfd_error_invalid_error_code)
    error_tag = bfd_error_invalid_error_code;	/* sanity check */

  return FUNC0(bfd_errmsgs [error_tag]);
}