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
struct string_list {char const* name; struct string_list* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 struct string_list* exclude_list ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3 (const char *name)
{
  struct string_list *p;
  int len = FUNC2 (name);

  for (p = exclude_list; p; p = p->next)
    if (!FUNC1 (name + len - FUNC2 (p->name), p->name)
	&& FUNC0 (name[len - FUNC2 (p->name) - 1]))
      return 1;

  return 0;
}