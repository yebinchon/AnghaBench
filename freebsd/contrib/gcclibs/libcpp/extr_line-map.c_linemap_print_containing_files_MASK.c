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
struct line_maps {scalar_t__ last_listed; } ;
struct line_map {scalar_t__ included_from; char* to_file; } ;

/* Variables and functions */
 struct line_map* FUNC0 (struct line_maps*,struct line_map const*) ; 
 int FUNC1 (struct line_map const*) ; 
 scalar_t__ FUNC2 (struct line_map const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6 (struct line_maps *set,
				const struct line_map *map)
{
  if (FUNC2 (map) || set->last_listed == map->included_from)
    return;

  set->last_listed = map->included_from;
  map = FUNC0 (set, map);

  FUNC4 (stderr,  FUNC3("In file included from %s:%u"),
	   map->to_file, FUNC1 (map));

  while (! FUNC2 (map))
    {
      map = FUNC0 (set, map);
      /* Translators note: this message is used in conjunction
	 with "In file included from %s:%ld" and some other
	 tricks.  We want something like this:

	 | In file included from sys/select.h:123,
	 |                  from sys/types.h:234,
	 |                  from userfile.c:31:
	 | bits/select.h:45: <error message here>

	 with all the "from"s lined up.
	 The trailing comma is at the beginning of this message,
	 and the trailing colon is not translated.  */
      FUNC4 (stderr, FUNC3(",\n                 from %s:%u"),
	       map->to_file, FUNC1 (map));
    }

  FUNC5 (":\n", stderr);
}