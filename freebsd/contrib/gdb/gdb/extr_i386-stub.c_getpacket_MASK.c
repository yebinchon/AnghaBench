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
 int BUFMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char,unsigned char*) ; 
 char FUNC1 () ; 
 unsigned char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 unsigned char* remcomInBuffer ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  stderr ; 

unsigned char *
FUNC4 (void)
{
  unsigned char *buffer = &remcomInBuffer[0];
  unsigned char checksum;
  unsigned char xmitcsum;
  int count;
  char ch;

  while (1)
    {
      /* wait around for the start character, ignore all other characters */
      while ((ch = FUNC1 ()) != '$')
	;

    retry:
      checksum = 0;
      xmitcsum = -1;
      count = 0;

      /* now, read until a # or end of buffer is found */
      while (count < BUFMAX)
	{
	  ch = FUNC1 ();
	  if (ch == '$')
	    goto retry;
	  if (ch == '#')
	    break;
	  checksum = checksum + ch;
	  buffer[count] = ch;
	  count = count + 1;
	}
      buffer[count] = 0;

      if (ch == '#')
	{
	  ch = FUNC1 ();
	  xmitcsum = FUNC2 (ch) << 4;
	  ch = FUNC1 ();
	  xmitcsum += FUNC2 (ch);

	  if (checksum != xmitcsum)
	    {
	      if (remote_debug)
		{
		  FUNC0 (stderr,
			   "bad checksum.  My count = 0x%hhx, sent=0x%hhx. buf=%s\n",
			   checksum, xmitcsum, buffer);
		}
	      FUNC3 ('-');	/* failed checksum */
	    }
	  else
	    {
	      FUNC3 ('+');	/* successful transfer */

	      /* if a sequence char is present, reply the sequence ID */
	      if (buffer[2] == ':')
		{
		  FUNC3 (buffer[0]);
		  FUNC3 (buffer[1]);

		  return &buffer[3];
		}

	      return &buffer[0];
	    }
	}
    }
}