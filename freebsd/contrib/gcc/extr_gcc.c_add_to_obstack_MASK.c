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
struct add_to_obstack_info {int first_time; int /*<<< orphan*/  ob; scalar_t__ check_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void *
FUNC4 (char *path, void *data)
{
  struct add_to_obstack_info *info = data;

  if (info->check_dir && !FUNC0 (path, false))
    return NULL;

  if (!info->first_time)
    FUNC1 (info->ob, PATH_SEPARATOR);

  FUNC2 (info->ob, path, FUNC3 (path));

  info->first_time = false;
  return NULL;
}