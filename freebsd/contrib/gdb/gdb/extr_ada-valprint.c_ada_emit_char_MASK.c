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

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3 (int c, struct ui_file *stream, int quoter, int type_len)
{
  if (type_len != 2)
    type_len = 1;

  c &= (1 << (type_len * TARGET_CHAR_BIT)) - 1;

  if (FUNC1 (c) && FUNC2 (c))
    {
      if (c == quoter && c == '"')
	FUNC0 (stream, "[\"%c\"]", quoter);
      else
	FUNC0 (stream, "%c", c);
    }
  else
    FUNC0 (stream, "[\"%0*x\"]", type_len * 2, c);
}