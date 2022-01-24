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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

int
FUNC8(char *buf, int size, FILE *fp)
{
  int done = 0;

  do {
    while (FUNC2(buf, size, fp)) {
      int len = FUNC6(buf);
      done += len;
      if (len > 1 && buf[len - 2] == '\\' &&
	  buf[len - 1] == '\n') {
	int ch;
	buf += len - 2;
	size -= len - 2;
	*buf = '\n';
	buf[1] = '\0';
	/*
	 * Skip leading white space on next line
	 */
	while ((ch = FUNC3(fp)) != EOF &&
	       FUNC4((unsigned char)ch) && FUNC5((unsigned char)ch)) ;
	(void) FUNC7(ch, fp);
      } else {
	return done;
      }
    }
  } while (size > 0 && !FUNC0(fp) && !FUNC1(fp));

  return done;
}