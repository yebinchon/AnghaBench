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
struct frame_id {scalar_t__ stack_addr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct frame_id) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ frame_debug ; 
 int /*<<< orphan*/  gdb_stdlog ; 

int
FUNC3 (struct frame_id l, struct frame_id r)
{
  int inner;
  if (l.stack_addr == 0 || r.stack_addr == 0)
    /* Like NaN, any operation involving an invalid ID always fails.  */
    inner = 0;
  else
    /* Only return non-zero when strictly inner than.  Note that, per
       comment in "frame.h", there is some fuzz here.  Frameless
       functions are not strictly inner than (same .stack but
       different .code and/or .special address).  */
    inner = FUNC0 (l.stack_addr, r.stack_addr);
  if (frame_debug)
    {
      FUNC2 (gdb_stdlog, "{ frame_id_inner (l=");
      FUNC1 (gdb_stdlog, l);
      FUNC2 (gdb_stdlog, ",r=");
      FUNC1 (gdb_stdlog, r);
      FUNC2 (gdb_stdlog, ") -> %d }\n", inner);
    }
  return inner;
}