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
struct pending {struct pending* next; } ;

/* Variables and functions */
 struct pending* file_symbols ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct pending* free_pendings ; 
 struct pending* global_symbols ; 
 scalar_t__ pending_macros ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void
FUNC3 (void *dummy)
{
  struct pending *next, *next1;

  for (next = free_pendings; next; next = next1)
    {
      next1 = next->next;
      FUNC2 ((void *) next);
    }
  free_pendings = NULL;

  FUNC1 ();

  for (next = file_symbols; next != NULL; next = next1)
    {
      next1 = next->next;
      FUNC2 ((void *) next);
    }
  file_symbols = NULL;

  for (next = global_symbols; next != NULL; next = next1)
    {
      next1 = next->next;
      FUNC2 ((void *) next);
    }
  global_symbols = NULL;

  if (pending_macros)
    FUNC0 (pending_macros);
}