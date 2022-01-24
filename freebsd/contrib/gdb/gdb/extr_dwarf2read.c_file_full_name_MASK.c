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
struct line_header {char** include_dirs; struct file_entry* file_names; } ;
struct file_entry {char const* name; int dir_index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5 (int file, struct line_header *lh, const char *comp_dir)
{
  struct file_entry *fe = &lh->file_names[file - 1];
  
  if (FUNC0 (fe->name))
    return FUNC4 (fe->name);
  else
    {
      const char *dir;
      int dir_len;
      char *full_name;

      if (fe->dir_index)
        dir = lh->include_dirs[fe->dir_index - 1];
      else
        dir = comp_dir;

      if (dir)
        {
          dir_len = FUNC2 (dir);
          full_name = FUNC3 (dir_len + 1 + FUNC2 (fe->name) + 1);
          FUNC1 (full_name, dir);
          full_name[dir_len] = '/';
          FUNC1 (full_name + dir_len + 1, fe->name);
          return full_name;
        }
      else
        return FUNC4 (fe->name);
    }
}