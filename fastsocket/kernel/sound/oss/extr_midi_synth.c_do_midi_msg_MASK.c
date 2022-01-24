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
 int /*<<< orphan*/  FUNC0 (int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(int synthno, unsigned char *msg, int mlen)
{
	switch (msg[0] & 0xf0)
	  {
	  case 0x90:
		  if (msg[2] != 0)
		    {
			    FUNC7(FUNC5(synthno, msg[0] & 0x0f, msg[1], msg[2]));
			    break;
		    }
		  msg[2] = 64;

	  case 0x80:
		  FUNC7(FUNC6(synthno, msg[0] & 0x0f, msg[1], msg[2]));
		  break;

	  case 0xA0:
		  FUNC7(FUNC3(synthno, msg[0] & 0x0f, msg[1], msg[2]));
		  break;

	  case 0xB0:
		  FUNC7(FUNC2(synthno, msg[0] & 0x0f,
				    msg[1], msg[2]));
		  break;

	  case 0xC0:
		  FUNC7(FUNC4(synthno, msg[0] & 0x0f, msg[1]));
		  break;

	  case 0xD0:
		  FUNC7(FUNC1(synthno, msg[0] & 0x0f, msg[1]));
		  break;

	  case 0xE0:
		  FUNC7(FUNC0(synthno, msg[0] & 0x0f,
			      (msg[1] & 0x7f) | ((msg[2] & 0x7f) << 7)));
		  break;

	  default:
		  /* printk( "MPU: Unknown midi channel message %02x\n",  msg[0]); */
		  ;
	  }
}