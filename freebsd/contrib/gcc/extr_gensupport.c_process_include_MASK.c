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
struct file_name_list {int /*<<< orphan*/  fname; struct file_name_list* next; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DIR_SEPARATOR 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ base_dir ; 
 char* FUNC2 (scalar_t__,char const*,char const*,...) ; 
 int errors ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct file_name_list* first_dir_md_include ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 char const* read_rtx_filename ; 
 int read_rtx_lineno ; 
 char* FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11 (rtx desc, int lineno)
{
  const char *filename = FUNC1 (desc, 0);
  const char *old_filename;
  int old_lineno;
  char *pathname;
  FILE *input_file;

  /* If specified file name is absolute, skip the include stack.  */
  if (! FUNC0 (filename))
    {
      struct file_name_list *stackp;

      /* Search directory path, trying to open the file.  */
      for (stackp = first_dir_md_include; stackp; stackp = stackp->next)
	{
	  static const char sep[2] = { DIR_SEPARATOR, '\0' };

	  pathname = FUNC2 (stackp->fname, sep, filename, NULL);
	  input_file = FUNC4 (pathname, "r");
	  if (input_file != NULL)
	    goto success;
	  FUNC5 (pathname);
	}
    }

  if (base_dir)
    pathname = FUNC2 (base_dir, filename, NULL);
  else
    pathname = FUNC10 (filename);
  input_file = FUNC4 (pathname, "r");
  if (input_file == NULL)
    {
      FUNC5 (pathname);
      FUNC7 (lineno, "include file `%s' not found", filename);
      errors = 1;
      return;
    }
 success:

  /* Save old cursor; setup new for the new file.  Note that "lineno" the
     argument to this function is the beginning of the include statement,
     while read_rtx_lineno has already been advanced.  */
  old_filename = read_rtx_filename;
  old_lineno = read_rtx_lineno;
  read_rtx_filename = pathname;
  read_rtx_lineno = 1;

  if (&include_callback)
    FUNC6 (pathname);

  /* Read the entire file.  */
  while (FUNC9 (input_file, &desc, &lineno))
    FUNC8 (desc, lineno);

  /* Do not free pathname.  It is attached to the various rtx queue
     elements.  */

  read_rtx_filename = old_filename;
  read_rtx_lineno = old_lineno;

  FUNC3 (input_file);
}