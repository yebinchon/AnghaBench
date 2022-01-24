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
struct propagate_block_info {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTX_AUTOINC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct propagate_block_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (rtx *px, void *data)
{
  rtx x = *px;
  struct propagate_block_info *pbi = data;

  if (FUNC1 (FUNC0 (x)) == RTX_AUTOINC)
    {
      FUNC3 (pbi, FUNC2 (x, 0));
      return -1;
    }

  return 0;
}