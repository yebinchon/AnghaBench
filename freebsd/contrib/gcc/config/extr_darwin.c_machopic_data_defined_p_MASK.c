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
#define  MACHOPIC_DEFINED_DATA 129 
#define  MACHOPIC_DEFINED_FUNCTION 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (rtx sym_ref)
{
  if (FUNC0 (sym_ref))
    return 0;

  switch (FUNC1 (sym_ref))
    {
    case MACHOPIC_DEFINED_DATA:
    case MACHOPIC_DEFINED_FUNCTION:
      return 1;
    default:
      return 0;
    }
}