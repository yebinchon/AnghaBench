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
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  segT ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_DATA ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  now_seg ; 
 int now_subseg ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6 (const char *name,
			segT *secp,
			symbolS **symp)
{
  segT current_section = now_seg;
  int current_subsec = now_subseg;
  segT new_sec;

  *secp = new_sec = FUNC4 (name, 0);
  FUNC5 (current_section, current_subsec);
  FUNC1 (stdoutput, new_sec, 4);
  FUNC2 (stdoutput, new_sec,
			 SEC_RELOC | SEC_ALLOC | SEC_LOAD | SEC_READONLY
			 | SEC_DATA);

  FUNC0 (*symp = FUNC3 (new_sec));
}