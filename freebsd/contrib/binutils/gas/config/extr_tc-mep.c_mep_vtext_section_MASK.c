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
typedef  scalar_t__ segT ;
typedef  int flagword ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_LOAD ; 
 int SEC_MEP_VLIW ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 int /*<<< orphan*/  VTEXT_SECTION_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static segT
FUNC3 (void)
{
  static segT vtext_section;

  if (! vtext_section)
    {
      flagword applicable = FUNC0 (stdoutput);
      vtext_section = FUNC2 (VTEXT_SECTION_NAME, 0);
      FUNC1 (stdoutput, vtext_section,
			     applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
					   | SEC_CODE | SEC_READONLY
					   | SEC_MEP_VLIW));
    }

  return vtext_section;
}