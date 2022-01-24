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
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 scalar_t__ CLK_ASM ; 
 scalar_t__ CLK_STDC94 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  c99 ; 
 int /*<<< orphan*/  cplusplus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang ; 
 int /*<<< orphan*/  objc ; 
 int /*<<< orphan*/  std ; 
 int /*<<< orphan*/  stdc_0_in_system_headers ; 
 int /*<<< orphan*/  traditional ; 

void
FUNC3 (cpp_reader *pfile, int hosted)
{
  FUNC2 (pfile);

  if (!FUNC0 (pfile, traditional)
      && (! FUNC0 (pfile, stdc_0_in_system_headers)
	  || FUNC0 (pfile, std)))
    FUNC1 (pfile, "__STDC__ 1");

  if (FUNC0 (pfile, cplusplus))
    FUNC1 (pfile, "__cplusplus 1");
  else if (FUNC0 (pfile, lang) == CLK_ASM)
    FUNC1 (pfile, "__ASSEMBLER__ 1");
  else if (FUNC0 (pfile, lang) == CLK_STDC94)
    FUNC1 (pfile, "__STDC_VERSION__ 199409L");
  else if (FUNC0 (pfile, c99))
    FUNC1 (pfile, "__STDC_VERSION__ 199901L");

  if (hosted)
    FUNC1 (pfile, "__STDC_HOSTED__ 1");
  else
    FUNC1 (pfile, "__STDC_HOSTED__ 0");

  if (FUNC0 (pfile, objc))
    FUNC1 (pfile, "__OBJC__ 1");
}