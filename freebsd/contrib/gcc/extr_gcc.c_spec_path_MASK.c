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
struct spec_path_info {scalar_t__ append_len; char* option; scalar_t__ separate_options; int /*<<< orphan*/  append; scalar_t__ omit_relative; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static void *
FUNC6 (char *path, void *data)
{
  struct spec_path_info *info = data;
  size_t len = 0;
  char save = 0;

  if (info->omit_relative && !FUNC0 (path))
    return NULL;

  if (info->append_len != 0)
    {
      len = FUNC5 (path);
      FUNC4 (path + len, info->append, info->append_len + 1);
    }

  if (!FUNC3 (path, true))
    return NULL;

  FUNC2 (info->option, 1, NULL);
  if (info->separate_options)
    FUNC2 (" ", 0, NULL);

  if (info->append_len == 0)
    {
      len = FUNC5 (path);
      save = path[len - 1];
      if (FUNC1 (path[len - 1]))
	path[len - 1] = '\0';
    }

  FUNC2 (path, 1, NULL);
  FUNC2 (" ", 0, NULL);

  /* Must not damage the original path.  */
  if (info->append_len == 0)
    path[len - 1] = save;

  return NULL;
}