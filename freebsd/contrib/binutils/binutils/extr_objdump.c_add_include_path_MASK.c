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
 char* FUNC0 (char const*,char*,char const*) ; 
 int include_path_count ; 
 char const** include_paths ; 
 char** FUNC1 (char const**,int) ; 

__attribute__((used)) static void
FUNC2 (const char *path)
{
  if (path[0] == 0)
    return;
  include_path_count++;
  include_paths = FUNC1 (include_paths,
			    include_path_count * sizeof (*include_paths));
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  if (path[1] == ':' && path[2] == 0)
    path = concat (path, ".", (const char *) 0);
#endif
  include_paths[include_path_count - 1] = path;
}