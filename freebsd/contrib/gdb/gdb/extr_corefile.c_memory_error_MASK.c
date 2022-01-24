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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*) ; 
 struct ui_file* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void
FUNC7 (int status, CORE_ADDR memaddr)
{
  struct ui_file *tmp_stream = FUNC4 ();
  FUNC3 (tmp_stream);

  if (status == EIO)
    {
      /* Actually, address between memaddr and memaddr + len
         was out of bounds. */
      FUNC2 (tmp_stream, "Cannot access memory at address ");
      FUNC5 (memaddr, 1, tmp_stream);
    }
  else
    {
      FUNC1 (tmp_stream, "Error accessing memory address ");
      FUNC5 (memaddr, 1, tmp_stream);
      FUNC1 (tmp_stream, ": %s.",
		       FUNC6 (status));
    }

  FUNC0 (tmp_stream);
}