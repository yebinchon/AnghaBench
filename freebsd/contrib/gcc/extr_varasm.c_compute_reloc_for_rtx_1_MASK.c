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
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (rtx *xp, void *data)
{
  int *preloc = data;
  rtx x = *xp;

  switch (FUNC0 (x))
    {
    case SYMBOL_REF:
      *preloc |= FUNC1 (x) ? 1 : 2;
      break;
    case LABEL_REF:
      *preloc |= 1;
      break;
    default:
      break;
    }

  return 0;
}