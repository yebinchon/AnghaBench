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
typedef  int /*<<< orphan*/  cpp_token ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
#define  errno_h 128 
 int /*<<< orphan*/  required_other ; 
 int seen_errno ; 
 int special_file_handling ; 

void
FUNC1 (const cpp_token *name)
{
  switch (special_file_handling)
    {
    case errno_h:
      if (FUNC0 (name, "errno"))
	seen_errno = 1, required_other--;
      break;

    default:
      break;
    }
}