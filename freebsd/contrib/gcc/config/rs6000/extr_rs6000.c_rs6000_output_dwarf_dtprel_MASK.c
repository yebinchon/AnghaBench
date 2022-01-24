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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DOUBLE_INT_ASM_OP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (FILE *file, int size, rtx x)
{
  switch (size)
    {
    case 4:
      FUNC0 ("\t.long\t", file);
      break;
    case 8:
      FUNC0 (DOUBLE_INT_ASM_OP, file);
      break;
    default:
      FUNC1 ();
    }
  FUNC2 (file, x);
  FUNC0 ("@dtprel+0x8000", file);
}