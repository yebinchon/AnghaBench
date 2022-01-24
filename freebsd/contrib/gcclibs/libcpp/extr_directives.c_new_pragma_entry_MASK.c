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
struct pragma_entry {struct pragma_entry* next; } ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pragma_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct pragma_entry *
FUNC2 (cpp_reader *pfile, struct pragma_entry **chain)
{
  struct pragma_entry *new_entry;

  new_entry = (struct pragma_entry *)
    FUNC0 (pfile, sizeof (struct pragma_entry));

  FUNC1 (new_entry, 0, sizeof (struct pragma_entry));
  new_entry->next = *chain;

  *chain = new_entry;
  return new_entry;
}