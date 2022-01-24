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
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int MAXPSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 

__attribute__((used)) static void
FUNC4 (unsigned char *buf, int buflen)
{
  unsigned char len[4];
  int i, chunk;
  unsigned char seq;

  /* Discard the read request.  FIXME: we have to hope it's for
     the exact number of bytes we want to send; should check for this.  */
  FUNC1 ();

  for (i = chunk = 0, seq = 0; i < buflen; i += chunk, seq++)
    {
      /* Don't send more than MAXPSIZE bytes at a time.  */
      chunk = buflen - i;
      if (chunk > MAXPSIZE)
	chunk = MAXPSIZE;

      /* Write a packet containing the number of bytes we are sending.  */
      FUNC3 (len, chunk);
      FUNC2 ('p', len, sizeof (len), seq);

      /* Write the data in raw form following the packet.  */
      FUNC0 (&buf[i], chunk);

      /* Discard the ACK packet.  */
      FUNC1 ();
    }

  /* Send an "end of data" packet.  */
  FUNC2 ('e', "", 0, 0);
}