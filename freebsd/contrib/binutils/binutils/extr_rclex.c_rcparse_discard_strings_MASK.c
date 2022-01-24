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
struct alloc_string {struct alloc_string* next; struct alloc_string* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alloc_string*) ; 
 struct alloc_string* strings ; 

void
FUNC1 (void)
{
  struct alloc_string *as;

  as = strings;
  while (as != NULL)
    {
      struct alloc_string *n;

      FUNC0 (as->s);
      n = as->next;
      FUNC0 (as);
      as = n;
    }

  strings = NULL;
}