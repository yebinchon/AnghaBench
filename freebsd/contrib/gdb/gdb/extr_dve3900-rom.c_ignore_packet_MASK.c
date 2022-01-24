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
 int PESC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  int c = -1;
  int len;

  /* Ignore lots of trash (messages about section addresses, for example)
     until we see the start of a packet.  */
  for (len = 0; len < 256; len++)
    {
      c = FUNC0 (0);
      if (c == PESC)
	break;
    }
  if (len == 8)
    FUNC1 ("Packet header byte not found; %02x seen instead.", c);

  /* Read the packet type and length.  */
  c = FUNC0 (1);	/* type */

  c = FUNC0 (1);	/* low byte of length */
  len = c & 0xff;

  c = FUNC0 (1);	/* high byte of length */
  len += (c & 0xff) << 8;

  /* Ignore the rest of the packet.  */
  while (len-- > 0)
    c = FUNC0 (1);
}