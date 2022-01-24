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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* rclex_tok ; 
 int rclex_tok_max ; 
 int rclex_tok_pos ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int ch)
{
  if (! rclex_tok || rclex_tok_max <= rclex_tok_pos)
    {
      char *h = FUNC3 (rclex_tok_max + 9);

      if (! h)
	FUNC0 ();
      if (rclex_tok)
	{
	  FUNC2 (h, rclex_tok, rclex_tok_pos + 1);
	  FUNC1 (rclex_tok);
	}
      else
	rclex_tok_pos = 0;
      rclex_tok_max += 8;
      rclex_tok = h;
    }
  if (ch != -1)
    rclex_tok[rclex_tok_pos++] = (char) ch;
  rclex_tok[rclex_tok_pos] = 0;
}