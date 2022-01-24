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
struct fn_decl {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fn_decl*) ; 
 int /*<<< orphan*/  FUNC1 (struct fn_decl*) ; 
#define  errno_h 130 
 struct fn_decl* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  required_other ; 
 int /*<<< orphan*/  required_unseen_count ; 
 int seen_EXIT_FAILURE ; 
 int seen_EXIT_SUCCESS ; 
 int /*<<< orphan*/  seen_S_IFBLK ; 
 int /*<<< orphan*/  seen_S_IFCHR ; 
 int /*<<< orphan*/  seen_S_IFDIR ; 
 int /*<<< orphan*/  seen_S_IFIFO ; 
 int /*<<< orphan*/  seen_S_IFLNK ; 
 int /*<<< orphan*/  seen_S_IFREG ; 
 int /*<<< orphan*/  seen_S_ISBLK ; 
 int /*<<< orphan*/  seen_S_ISCHR ; 
 int /*<<< orphan*/  seen_S_ISDIR ; 
 int /*<<< orphan*/  seen_S_ISFIFO ; 
 int /*<<< orphan*/  seen_S_ISLNK ; 
 int /*<<< orphan*/  seen_S_ISREG ; 
 int seen_errno ; 
 int special_file_handling ; 
#define  stdlib_h 129 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
#define  sys_stat_h 128 

__attribute__((used)) static void
FUNC5 (const char *fname)
{
  /* The original include file defines fname as a macro.  */
  struct fn_decl *fn = FUNC2 (fname, FUNC4 (fname));

  /* Since fname is a macro, don't require a prototype for it.  */
  if (fn)
    {
      if (FUNC0 (fn))
	required_unseen_count--;
      FUNC1 (fn);
    }

  switch (special_file_handling)
    {
    case errno_h:
      if (FUNC3 (fname, "errno") == 0 && !seen_errno)
	seen_errno = 1, required_other--;
      break;
    case stdlib_h:
      if (FUNC3 (fname, "EXIT_FAILURE") == 0 && !seen_EXIT_FAILURE)
	seen_EXIT_FAILURE = 1, required_other--;
      if (FUNC3 (fname, "EXIT_SUCCESS") == 0 && !seen_EXIT_SUCCESS)
	seen_EXIT_SUCCESS = 1, required_other--;
      break;
    case sys_stat_h:
      if (fname[0] == 'S' && fname[1] == '_')
	{
	  if (FUNC3 (fname, "S_IFBLK") == 0) seen_S_IFBLK++;
	  else if (FUNC3 (fname, "S_ISBLK") == 0) seen_S_ISBLK++;
	  else if (FUNC3 (fname, "S_IFCHR") == 0) seen_S_IFCHR++;
	  else if (FUNC3 (fname, "S_ISCHR") == 0) seen_S_ISCHR++;
	  else if (FUNC3 (fname, "S_IFDIR") == 0) seen_S_IFDIR++;
	  else if (FUNC3 (fname, "S_ISDIR") == 0) seen_S_ISDIR++;
	  else if (FUNC3 (fname, "S_IFIFO") == 0) seen_S_IFIFO++;
	  else if (FUNC3 (fname, "S_ISFIFO") == 0) seen_S_ISFIFO++;
	  else if (FUNC3 (fname, "S_IFLNK") == 0) seen_S_IFLNK++;
	  else if (FUNC3 (fname, "S_ISLNK") == 0) seen_S_ISLNK++;
	  else if (FUNC3 (fname, "S_IFREG") == 0) seen_S_IFREG++;
	  else if (FUNC3 (fname, "S_ISREG") == 0) seen_S_ISREG++;
	}
      break;

    default:
      break;
    }
}