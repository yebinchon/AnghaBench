#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gdbarch_swap {TYPE_1__* source; int /*<<< orphan*/  swap; struct gdbarch_swap* next; } ;
struct gdbarch {struct gdbarch_swap* swap; } ;
struct TYPE_2__ {int /*<<< orphan*/  sizeof_data; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct gdbarch* current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct gdbarch *new_gdbarch)
{
  struct gdbarch_swap *curr;

  FUNC0 (current_gdbarch == NULL);
  for (curr = new_gdbarch->swap;
       curr != NULL;
       curr = curr->next)
    FUNC1 (curr->source->data, curr->swap, curr->source->sizeof_data);
  current_gdbarch = new_gdbarch;
}