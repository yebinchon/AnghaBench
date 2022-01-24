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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  POST_DEC 131 
#define  POST_INC 130 
#define  PRE_DEC 129 
#define  PRE_INC 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (rtx addr, int size, int n_refs)
{
  int offset = 0;

  switch (FUNC1 (addr))
    {
    case PRE_INC:
      offset = (n_refs + 1) * size;
      break;
    case PRE_DEC:
      offset = -(n_refs + 1) * size;
      break;
    case POST_INC:
      offset = n_refs * size;
      break;
    case POST_DEC:
      offset = -n_refs * size;
      break;

    default:
      return addr;
    }

  if (offset)
    addr = FUNC5 (FUNC2 (addr), FUNC3 (addr, 0),
			 FUNC0 (offset));
  else
    addr = FUNC3 (addr, 0);
  addr = FUNC4 (addr);

  return addr;
}