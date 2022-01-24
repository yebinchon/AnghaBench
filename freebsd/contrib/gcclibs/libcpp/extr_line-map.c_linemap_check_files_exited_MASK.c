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
struct line_maps {int used; struct line_map* maps; } ;
struct line_map {char* to_file; } ;

/* Variables and functions */
 struct line_map* FUNC0 (struct line_maps*,struct line_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3 (struct line_maps *set)
{
  struct line_map *map;
  /* Depending upon whether we are handling preprocessed input or
     not, this can be a user error or an ICE.  */
  for (map = &set->maps[set->used - 1]; ! FUNC1 (map);
       map = FUNC0 (set, map))
    FUNC2 (stderr, "line-map.c: file \"%s\" entered but not left\n",
	     map->to_file);
}