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
 int FUNC0 (char const*) ; 

__attribute__((used)) static int
FUNC1 (const char *shell_file)
{
  const int shell_file_len = FUNC0 (shell_file);
  
  /* Bang should be escaped only in C Shells.  For now, simply check
     that the shell name ends with 'csh', which covers at least csh
     and tcsh.  This should be good enough for now.  */

  if (shell_file_len < 3)
    return 0;

  if (shell_file[shell_file_len - 3] == 'c'
      && shell_file[shell_file_len - 2] == 's'
      && shell_file[shell_file_len - 1] == 'h')
    return 1;

  return 0;
}