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
struct re_pattern_buffer {int dummy; } ;

/* Variables and functions */
 int TARGET_BUF_SIZE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct re_pattern_buffer*,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int
FUNC5 (struct re_pattern_buffer *pat, char *buf, int buflen)
{
  char *mybuf;
  char *p;
  FUNC2 ("MON Expecting regexp\n");
  if (buf)
    mybuf = buf;
  else
    {
      mybuf = FUNC0 (TARGET_BUF_SIZE);
      buflen = TARGET_BUF_SIZE;
    }

  p = mybuf;
  while (1)
    {
      int retval;

      if (p - mybuf >= buflen)
	{			/* Buffer about to overflow */

/* On overflow, we copy the upper half of the buffer to the lower half.  Not
   great, but it usually works... */

	  FUNC1 (mybuf, mybuf + buflen / 2, buflen / 2);
	  p = mybuf + buflen / 2;
	}

      *p++ = FUNC4 (timeout);

      retval = FUNC3 (pat, mybuf, p - mybuf, 0, p - mybuf, NULL);
      if (retval >= 0)
	return 1;
    }
}