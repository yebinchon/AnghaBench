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
typedef  int /*<<< orphan*/  voidp ;

/* Variables and functions */
 int /*<<< orphan*/  D_STR ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

char **
FUNC6(char *s, int ch, int qc)
{
  char **ivec;
  int ic = 0;
  int done = 0;

  ivec = (char **) FUNC4((ic + 1) * sizeof(char *));

  while (!done) {
    char *v;

    /*
     * skip to split char
     */
    while (*s && (ch == ' ' ? (FUNC1((unsigned char)*s) && FUNC2((unsigned char)*s)) : *s == ch))
      *s++ = '\0';

    /*
     * End of string?
     */
    if (!*s)
      break;

    /*
     * remember start of string
     */
    v = s;

    /*
     * skip to split char
     */
    while (*s && !(ch == ' ' ? (FUNC1((unsigned char)*s) && FUNC2((unsigned char)*s)) : *s == ch)) {
      if (*s++ == qc) {
	/*
	 * Skip past string.
	 */
	s++;
	while (*s && *s != qc)
	  s++;
	if (*s == qc)
	  s++;
      }
    }

    if (!*s)
      done = 1;
    *s++ = '\0';

    /*
     * save string in new ivec slot
     */
    ivec[ic++] = v;
    ivec = (char **) FUNC5((voidp) ivec, (ic + 1) * sizeof(char *));
    if (FUNC0(D_STR))
      FUNC3(XLOG_DEBUG, "strsplit saved \"%s\"", v);
  }

  if (FUNC0(D_STR))
    FUNC3(XLOG_DEBUG, "strsplit saved a total of %d strings", ic);

  ivec[ic] = NULL;

  return ivec;
}