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

/* Variables and functions */
 int /*<<< orphan*/  GO_USAGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3 (char *line_no, int from_tty)
{
  if (line_no == (char *) NULL || !*line_no)
    FUNC1 (GO_USAGE);
  else
    {
      FUNC2 (line_no, from_tty);
      FUNC0 (line_no, from_tty);
    }
}