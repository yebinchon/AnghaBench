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
struct frame_unwind_table {int dummy; } ;
typedef  int /*<<< orphan*/  frame_unwind_sniffer_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_unwind_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  frame_unwind_data ; 
 struct frame_unwind_table* FUNC1 (struct gdbarch*) ; 
 struct frame_unwind_table* FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ,struct frame_unwind_table*) ; 

void
FUNC4 (struct gdbarch *gdbarch,
			     frame_unwind_sniffer_ftype *sniffer)
{
  struct frame_unwind_table *table =
    FUNC2 (gdbarch, frame_unwind_data);
  if (table == NULL)
    {
      /* ULGH, called during architecture initialization.  Patch
         things up.  */
      table = FUNC1 (gdbarch);
      FUNC3 (gdbarch, frame_unwind_data, table);
    }
  FUNC0 (table, sniffer);
}