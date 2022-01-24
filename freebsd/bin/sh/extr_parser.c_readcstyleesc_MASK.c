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
 scalar_t__ CCTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int CTLESC ; 
 int PEOF ; 
 scalar_t__* SQSYNTAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ doprompt ; 
 int /*<<< orphan*/  initial_localeisutf8 ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  plinno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(char *out)
{
	int c, vc, i, n;
	unsigned int v;

	c = FUNC2();
	switch (c) {
	case '\0':
		FUNC5("Unterminated quoted string");
	case '\n':
		plinno++;
		if (doprompt)
			FUNC4(2);
		else
			FUNC4(0);
		return out;
	case '\\':
	case '\'':
	case '"':
		v = c;
		break;
	case 'a': v = '\a'; break;
	case 'b': v = '\b'; break;
	case 'e': v = '\033'; break;
	case 'f': v = '\f'; break;
	case 'n': v = '\n'; break;
	case 'r': v = '\r'; break;
	case 't': v = '\t'; break;
	case 'v': v = '\v'; break;
	case 'x':
		  v = 0;
		  for (;;) {
			  c = FUNC2();
			  if (c >= '0' && c <= '9')
				  v = (v << 4) + c - '0';
			  else if (c >= 'A' && c <= 'F')
				  v = (v << 4) + c - 'A' + 10;
			  else if (c >= 'a' && c <= 'f')
				  v = (v << 4) + c - 'a' + 10;
			  else
				  break;
		  }
		  FUNC3();
		  break;
	case '0': case '1': case '2': case '3':
	case '4': case '5': case '6': case '7':
		  v = c - '0';
		  c = FUNC2();
		  if (c >= '0' && c <= '7') {
			  v <<= 3;
			  v += c - '0';
			  c = FUNC2();
			  if (c >= '0' && c <= '7') {
				  v <<= 3;
				  v += c - '0';
			  } else
				  FUNC3();
		  } else
			  FUNC3();
		  break;
	case 'c':
		  c = FUNC2();
		  if (c < 0x3f || c > 0x7a || c == 0x60)
			  FUNC5("Bad escape sequence");
		  if (c == '\\' && FUNC2() != '\\')
			  FUNC5("Bad escape sequence");
		  if (c == '?')
			  v = 127;
		  else
			  v = c & 0x1f;
		  break;
	case 'u':
	case 'U':
		  n = c == 'U' ? 8 : 4;
		  v = 0;
		  for (i = 0; i < n; i++) {
			  c = FUNC2();
			  if (c >= '0' && c <= '9')
				  v = (v << 4) + c - '0';
			  else if (c >= 'A' && c <= 'F')
				  v = (v << 4) + c - 'A' + 10;
			  else if (c >= 'a' && c <= 'f')
				  v = (v << 4) + c - 'a' + 10;
			  else
				  FUNC5("Bad escape sequence");
		  }
		  if (v == 0 || (v >= 0xd800 && v <= 0xdfff))
			  FUNC5("Bad escape sequence");
		  /* We really need iconv here. */
		  if (initial_localeisutf8 && v > 127) {
			  FUNC0(4, out);
			  /*
			   * We cannot use wctomb() as the locale may have
			   * changed.
			   */
			  if (v <= 0x7ff) {
				  FUNC1(0xc0 | v >> 6, out);
				  FUNC1(0x80 | (v & 0x3f), out);
				  return out;
			  } else if (v <= 0xffff) {
				  FUNC1(0xe0 | v >> 12, out);
				  FUNC1(0x80 | ((v >> 6) & 0x3f), out);
				  FUNC1(0x80 | (v & 0x3f), out);
				  return out;
			  } else if (v <= 0x10ffff) {
				  FUNC1(0xf0 | v >> 18, out);
				  FUNC1(0x80 | ((v >> 12) & 0x3f), out);
				  FUNC1(0x80 | ((v >> 6) & 0x3f), out);
				  FUNC1(0x80 | (v & 0x3f), out);
				  return out;
			  }
		  }
		  if (v > 127)
			  v = '?';
		  break;
	default:
		  FUNC5("Bad escape sequence");
	}
	vc = (char)v;
	/*
	 * We can't handle NUL bytes.
	 * POSIX says we should skip till the closing quote.
	 */
	if (vc == '\0') {
		while ((c = FUNC2()) != '\'') {
			if (c == '\\')
				c = FUNC2();
			if (c == PEOF)
				FUNC5("Unterminated quoted string");
			if (c == '\n') {
				plinno++;
				if (doprompt)
					FUNC4(2);
				else
					FUNC4(0);
			}
		}
		FUNC3();
		return out;
	}
	if (SQSYNTAX[vc] == CCTL)
		FUNC1(CTLESC, out);
	FUNC1(vc, out);
	return out;
}