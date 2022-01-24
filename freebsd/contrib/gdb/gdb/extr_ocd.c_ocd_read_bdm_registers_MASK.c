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
 unsigned char OCD_READ_REGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 unsigned char* FUNC2 (unsigned char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  remote_timeout ; 

unsigned char *
FUNC4 (int first_bdm_regno, int last_bdm_regno, int *reglen)
{
  unsigned char buf[10];
  int i;
  unsigned char *p;
  unsigned char *regs;
  int error_code, status;
  int pktlen;

  buf[0] = OCD_READ_REGS;
  buf[1] = first_bdm_regno >> 8;
  buf[2] = first_bdm_regno & 0xff;
  buf[3] = last_bdm_regno >> 8;
  buf[4] = last_bdm_regno & 0xff;

  FUNC3 (buf, 5);
  p = FUNC2 (OCD_READ_REGS, &pktlen, remote_timeout);

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    FUNC1 ("read_bdm_registers:", error_code);

  i = p[3];
  if (i == 0)
    i = 256;

  if (i > pktlen - 4
      || ((i & 3) != 0))
    FUNC0 ("Register block size bad:  %d", i);

  *reglen = i;

  regs = p + 4;

  return regs;
}