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
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 

bfd_boolean
FUNC4 (bfd *core_bfd, bfd *exec_bfd)
{
  char *exec;
  char *core;
  char *last_slash;

  if (exec_bfd == NULL || core_bfd == NULL)
    return TRUE;

  /* The cast below is to avoid a compiler warning due to the assignment
     of the const char * returned by bfd_core_file_failing_command to a
     non-const char *.  In this case, the assignement does not lead to
     breaking the const, as we're only reading the string.  */
     
  core = (char *) FUNC0 (core_bfd);
  if (core == NULL)
    return TRUE;

  exec = FUNC1 (exec_bfd);
  if (exec == NULL)
    return TRUE;

  last_slash = FUNC3 (core, '/');
  if (last_slash != NULL)
    core = last_slash + 1;

  last_slash = FUNC3 (exec, '/');
  if (last_slash != NULL)
    exec = last_slash + 1;
  
  return FUNC2 (exec, core) == 0;
}