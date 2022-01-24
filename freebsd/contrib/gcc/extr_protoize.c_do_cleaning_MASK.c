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
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2 (char *new_clean_text_base, const char *new_clean_text_limit)
{
  char *scan_p;
  int non_whitespace_since_newline = 0;

  for (scan_p = new_clean_text_base; scan_p < new_clean_text_limit; scan_p++)
    {
      switch (*scan_p)
	{
	case '/':			/* Handle comments.  */
	  if (scan_p[1] != '*')
	    goto regular;
	  non_whitespace_since_newline = 1;
	  scan_p[0] = ' ';
	  scan_p[1] = ' ';
	  scan_p += 2;
	  while (scan_p[1] != '/' || scan_p[0] != '*')
	    {
	      if (!FUNC0 ((const unsigned char)*scan_p))
		*scan_p = ' ';
	      ++scan_p;
	      FUNC1 (scan_p < new_clean_text_limit);
	    }
	  *scan_p++ = ' ';
	  *scan_p = ' ';
	  break;

	case '#':			/* Handle pp directives.  */
	  if (non_whitespace_since_newline)
	    goto regular;
	  *scan_p = ' ';
	  while (scan_p[1] != '\n' || scan_p[0] == '\\')
	    {
	      if (!FUNC0 ((const unsigned char)*scan_p))
		*scan_p = ' ';
	      ++scan_p;
	      FUNC1 (scan_p < new_clean_text_limit);
	    }
	  *scan_p++ = ' ';
	  break;

	case '\'':			/* Handle character literals.  */
	  non_whitespace_since_newline = 1;
	  while (scan_p[1] != '\'' || scan_p[0] == '\\')
	    {
	      if (scan_p[0] == '\\'
		  && !FUNC0 ((const unsigned char) scan_p[1]))
		scan_p[1] = ' ';
	      if (!FUNC0 ((const unsigned char)*scan_p))
		*scan_p = ' ';
	      ++scan_p;
	      FUNC1 (scan_p < new_clean_text_limit);
	    }
	  *scan_p++ = ' ';
	  break;

	case '"':			/* Handle string literals.  */
	  non_whitespace_since_newline = 1;
	  while (scan_p[1] != '"' || scan_p[0] == '\\')
	    {
	      if (scan_p[0] == '\\'
		  && !FUNC0 ((const unsigned char) scan_p[1]))
		scan_p[1] = ' ';
	      if (!FUNC0 ((const unsigned char)*scan_p))
		*scan_p = ' ';
	      ++scan_p;
	      FUNC1 (scan_p < new_clean_text_limit);
	    }
	  if (!FUNC0 ((const unsigned char)*scan_p))
	    *scan_p = ' ';
	  scan_p++;
	  break;

	case '\\':			/* Handle line continuations.  */
	  if (scan_p[1] != '\n')
	    goto regular;
	  *scan_p = ' ';
	  break;

	case '\n':
	  non_whitespace_since_newline = 0;	/* Reset.  */
	  break;

	case ' ':
	case '\v':
	case '\t':
	case '\r':
	case '\f':
	case '\b':
	  break;		/* Whitespace characters.  */

	default:
regular:
	  non_whitespace_since_newline = 1;
	  break;
	}
    }
}