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
struct print_file_list {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int include_path_count ; 
 int /*<<< orphan*/ * include_paths ; 
 void* FUNC2 (char const*,char) ; 
 struct print_file_list* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static struct print_file_list *
FUNC4 (const char *filename)
{
  struct print_file_list *p;
  const char *fname;
  int i;

  if (filename == NULL)
    return NULL;

  p = FUNC3 (filename, filename);
  if (p != NULL)
    return p;

  if (include_path_count == 0)
    return NULL;

  /* Get the name of the file.  */
  fname = FUNC2 (filename, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  {
    /* We could have a mixed forward/back slash case.  */
    char *backslash = strrchr (filename, '\\');
    if (fname == NULL || (backslash != NULL && backslash > fname))
      fname = backslash;
    if (fname == NULL && filename[0] != '\0' && filename[1] == ':')
      fname = filename + 1;
  }
#endif
  if (fname == NULL)
    fname = filename;
  else
    ++fname;

  /* If file exists under a new path, we need to add it to the list
     so that show_line knows about it.  */
  for (i = 0; i < include_path_count; i++)
    {
      char *modname = FUNC0 (include_paths[i], "/", fname, (const char *) 0);

      p = FUNC3 (filename, modname);
      if (p)
	return p;

      FUNC1 (modname);
    }

  return NULL;
}