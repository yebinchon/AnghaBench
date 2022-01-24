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
struct dump_list_entry {int type; struct dump_list_entry* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dump_list_entry* dump_sects_byname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dump_list_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4 (const char *section, int type)
{
  struct dump_list_entry *new_request;

  new_request = FUNC2 (sizeof (struct dump_list_entry));
  if (!new_request)
    FUNC1 (FUNC0("Out of memory allocating dump request table.\n"));

  new_request->name = FUNC3 (section);
  if (!new_request->name)
    FUNC1 (FUNC0("Out of memory allocating dump request table.\n"));

  new_request->type = type;

  new_request->next = dump_sects_byname;
  dump_sects_byname = new_request;
}