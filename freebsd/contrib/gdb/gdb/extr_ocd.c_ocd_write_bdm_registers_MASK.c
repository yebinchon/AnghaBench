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

/* Variables and functions */
 unsigned char OCD_WRITE_REGS ; 
 unsigned char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 unsigned char* FUNC4 (unsigned char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  remote_timeout ; 

void
FUNC6 (int first_bdm_regno, unsigned char *regptr, int reglen)
{
  unsigned char *buf;
  unsigned char *p;
  int error_code, status;
  int pktlen;

  buf = FUNC0 (4 + reglen);

  buf[0] = OCD_WRITE_REGS;
  buf[1] = first_bdm_regno >> 8;
  buf[2] = first_bdm_regno & 0xff;
  buf[3] = reglen;
  FUNC2 (buf + 4, regptr, reglen);

  FUNC5 (buf, 4 + reglen);
  p = FUNC4 (OCD_WRITE_REGS, &pktlen, remote_timeout);

  if (pktlen < 3)
    FUNC1 ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    FUNC3 ("ocd_write_bdm_registers:", error_code);
}