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
 char* ASM_LONG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (FILE *file, int size, rtx x)
{
  FUNC0 (ASM_LONG, file);
  FUNC2 (file, x);
  FUNC0 ("@DTPOFF", file);
  switch (size)
    {
    case 4:
      break;
    case 8:
      FUNC0 (", 0", file);
      break;
    default:
      FUNC1 ();
   }
}