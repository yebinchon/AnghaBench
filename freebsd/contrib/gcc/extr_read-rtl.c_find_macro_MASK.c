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
struct mapping {int index; } ;
struct macro_group {int num_builtins; int (* find_builtin ) (char const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  macros; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (struct macro_group *group, const char *name, FILE *infile)
{
  struct mapping *m;

  m = (struct mapping *) FUNC0 (group->macros, &name);
  if (m != 0)
    return m->index + group->num_builtins;
  return group->find_builtin (name, infile);
}