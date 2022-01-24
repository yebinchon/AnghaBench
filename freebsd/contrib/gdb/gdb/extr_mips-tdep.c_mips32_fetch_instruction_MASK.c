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
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MIPS_INSTLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ULONGEST
FUNC3 (CORE_ADDR addr)
{
  char buf[MIPS_INSTLEN];
  int instlen;
  int status;
  instlen = MIPS_INSTLEN;
  status = FUNC2 (addr, buf, instlen);
  if (status)
    FUNC1 (status, addr);
  return FUNC0 (buf, instlen);
}