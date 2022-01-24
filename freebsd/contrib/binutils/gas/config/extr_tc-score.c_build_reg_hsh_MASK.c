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
struct reg_map {int /*<<< orphan*/ * htab; struct reg_entry* names; } ;
struct reg_entry {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct reg_entry const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (struct reg_map *map)
{
  const struct reg_entry *r;

  if ((map->htab = FUNC2 ()) == NULL)
    {
      FUNC1 (FUNC0("virtual memory exhausted"));
    }
  for (r = map->names; r->name != NULL; r++)
    {
      FUNC3 (r, map->htab);
    }
}