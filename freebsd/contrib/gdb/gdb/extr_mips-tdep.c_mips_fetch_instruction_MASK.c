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
typedef  int /*<<< orphan*/  t_inst ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MIPS16_INSTLEN ; 
 int MIPS_INSTLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_inst
FUNC5 (CORE_ADDR addr)
{
  char buf[MIPS_INSTLEN];
  int instlen;
  int status;

  if (FUNC2 (addr))
    {
      instlen = MIPS16_INSTLEN;
      addr = FUNC4 (addr);
    }
  else
    instlen = MIPS_INSTLEN;
  status = FUNC3 (addr, buf, instlen);
  if (status)
    FUNC1 (status, addr);
  return FUNC0 (buf, instlen);
}