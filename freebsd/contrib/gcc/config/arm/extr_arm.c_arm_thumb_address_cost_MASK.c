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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PLUS ; 
 int REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC2 (rtx x)
{
  enum rtx_code c  = FUNC0 (x);

  if (c == REG)
    return 1;
  if (c == PLUS
      && FUNC0 (FUNC1 (x, 0)) == REG
      && FUNC0 (FUNC1 (x, 1)) == CONST_INT)
    return 1;

  return 2;
}