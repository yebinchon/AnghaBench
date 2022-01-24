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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 char OCD_READ_MEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 unsigned char* FUNC4 (char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  remote_timeout ; 

__attribute__((used)) static int
FUNC6 (CORE_ADDR memaddr, char *myaddr, int len)
{
  char buf[256 + 10];
  unsigned char *p;
  int origlen;

  origlen = len;

  buf[0] = OCD_READ_MEM;
  buf[5] = 1;			/* Read as bytes */

  while (len > 0)
    {
      int numbytes;
      int pktlen;
      int status, error_code;

      numbytes = FUNC2 (len, 256 - 7);

      buf[1] = memaddr >> 24;
      buf[2] = memaddr >> 16;
      buf[3] = memaddr >> 8;
      buf[4] = memaddr;

      buf[6] = numbytes;

      FUNC5 (buf, 7);
      p = FUNC4 (OCD_READ_MEM, &pktlen, remote_timeout);
      if (pktlen < 4)
	FUNC0 ("Truncated response packet from OCD device");

      status = p[1];
      error_code = p[2];

      if (error_code == 0x11)	/* Got a bus error? */
	{
	  CORE_ADDR error_address;

	  error_address = p[3] << 24;
	  error_address |= p[4] << 16;
	  error_address |= p[5] << 8;
	  error_address |= p[6];
	  numbytes = error_address - memaddr;

	  len -= numbytes;

	  errno = EIO;

	  break;
	}
      else if (error_code != 0)
	FUNC3 ("ocd_read_bytes:", error_code);

      FUNC1 (myaddr, &p[4], numbytes);

      len -= numbytes;
      memaddr += numbytes;
      myaddr += numbytes;
    }

  return origlen - len;
}