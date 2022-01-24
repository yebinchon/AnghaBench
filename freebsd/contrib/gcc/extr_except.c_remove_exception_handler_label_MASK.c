#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ehl_map_entry {int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int /*<<< orphan*/ * exception_handler_label_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC0 (struct ehl_map_entry**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct ehl_map_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (rtx label)
{
  struct ehl_map_entry **slot, tmp;

  /* If exception_handler_label_map was not built yet,
     there is nothing to do.  */
  if (cfun->eh->exception_handler_label_map == NULL)
    return;

  tmp.label = label;
  slot = (struct ehl_map_entry **)
    FUNC2 (cfun->eh->exception_handler_label_map, &tmp, NO_INSERT);
  FUNC0 (slot);

  FUNC1 (cfun->eh->exception_handler_label_map, (void **) slot);
}