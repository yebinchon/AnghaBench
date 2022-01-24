#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* prev; int /*<<< orphan*/  alignment; } ;
typedef  TYPE_1__ align_stack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* field_align_stack ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  maximum_field_alignment ; 

__attribute__((used)) static void
FUNC2 (void)
{
  if (field_align_stack)
    {
      align_stack *entry = field_align_stack;

      maximum_field_alignment = entry->alignment;
      field_align_stack = entry->prev;
      FUNC1 (entry);
    }
  else
    FUNC0 ("too many #pragma options align=reset");
}