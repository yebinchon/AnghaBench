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
struct gdbarch {int dummy; } ;
struct frame_base_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  frame_base_data ; 
 struct frame_base_table* FUNC0 (struct gdbarch*) ; 
 struct frame_base_table* FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ,struct frame_base_table*) ; 

__attribute__((used)) static struct frame_base_table *
FUNC3 (struct gdbarch *gdbarch)
{
  struct frame_base_table *table = FUNC1 (gdbarch, frame_base_data);
  if (table == NULL)
    {
      /* ULGH, called during architecture initialization.  Patch
         things up.  */
      table = FUNC0 (gdbarch);
      FUNC2 (gdbarch, frame_base_data, table);
    }
  return table;
}