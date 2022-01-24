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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int current_function_uses_pic_offset_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ global_offset_table ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

__attribute__((used)) static rtx
FUNC3 (void)
{
  rtx temp;
  if (flag_pic)
    {
      current_function_uses_pic_offset_table = 1;
      return pic_offset_table_rtx;
    }

  if (!global_offset_table)
    global_offset_table = FUNC2 (Pmode, "_GLOBAL_OFFSET_TABLE_");
  temp = FUNC1 (Pmode);
  FUNC0 (temp, global_offset_table);
  return temp;
}