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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ASM_LONG ; 
 char* ASM_QUAD ; 
 int LPREFIX ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (FILE *file, int value)
{
  const char *directive = ASM_LONG;

#ifdef ASM_QUAD
  if (TARGET_64BIT)
    directive = ASM_QUAD;
#else
  FUNC1 (!TARGET_64BIT);
#endif

  FUNC0 (file, "%s%s%d\n", directive, LPREFIX, value);
}