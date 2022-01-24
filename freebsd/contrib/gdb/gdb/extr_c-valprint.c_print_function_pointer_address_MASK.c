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
struct ui_file {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ addressprint ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ui_file*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,struct ui_file*) ; 

__attribute__((used)) static void
FUNC4 (CORE_ADDR address, struct ui_file *stream)
{
  CORE_ADDR func_addr = FUNC1 (current_gdbarch,
							    address,
							    &current_target);

  /* If the function pointer is represented by a description, print the
     address of the description.  */
  if (addressprint && func_addr != address)
    {
      FUNC0 ("@", stream);
      FUNC3 (address, 1, stream);
      FUNC0 (": ", stream);
    }
  FUNC2 (func_addr, stream, demangle);
}