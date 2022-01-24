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
 int OCD_FLAG_CABLE_DISC ; 
 int OCD_FLAG_PWF ; 
 unsigned char OCD_LOG_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 unsigned char* FUNC2 (unsigned char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  remote_timeout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static unsigned char *
FUNC5 (int cmd, int *statusp, int *lenp)
{
  unsigned char buf[100], *p;
  int status, error_code;
  char errbuf[100];

  unsigned char logbuf[100];
  int logpktlen;

  buf[0] = cmd;
  FUNC3 (buf, 1);	/* Send command */
  p = FUNC2 (*buf, lenp, remote_timeout);

  if (*lenp < 3)
    FUNC0 ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    {
      FUNC4 (errbuf, "ocd_do_command (0x%x):", cmd);
      FUNC1 (errbuf, error_code);
    }

  if (status & OCD_FLAG_PWF)
    FUNC0 ("OCD device can't detect VCC at BDM interface.");
  else if (status & OCD_FLAG_CABLE_DISC)
    FUNC0 ("BDM cable appears to be disconnected.");

  *statusp = status;

  logbuf[0] = OCD_LOG_FILE;
  logbuf[1] = 3;		/* close existing WIGGLERS.LOG */
  FUNC3 (logbuf, 2);
  FUNC2 (logbuf[0], &logpktlen, remote_timeout);

  logbuf[0] = OCD_LOG_FILE;
  logbuf[1] = 2;		/* append to existing WIGGLERS.LOG */
  FUNC3 (logbuf, 2);
  FUNC2 (logbuf[0], &logpktlen, remote_timeout);

  return p + 3;
}