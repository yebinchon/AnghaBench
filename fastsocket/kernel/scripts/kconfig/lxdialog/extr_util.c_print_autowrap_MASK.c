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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void FUNC6(WINDOW * win, const char *prompt, int width, int y, int x)
{
	int newl, cur_x, cur_y;
	int i, prompt_len, room, wlen;
	char tempstr[MAX_LEN + 1], *word, *sp, *sp2;

	FUNC2(tempstr, prompt);

	prompt_len = FUNC3(tempstr);

	/*
	 * Remove newlines
	 */
	for (i = 0; i < prompt_len; i++) {
		if (tempstr[i] == '\n')
			tempstr[i] = ' ';
	}

	if (prompt_len <= width - x * 2) {	/* If prompt is short */
		FUNC5(win, y, (width - prompt_len) / 2);
		FUNC4(win, tempstr);
	} else {
		cur_x = x;
		cur_y = y;
		newl = 1;
		word = tempstr;
		while (word && *word) {
			sp = FUNC1(word, ' ');
			if (sp)
				*sp++ = 0;

			/* Wrap to next line if either the word does not fit,
			   or it is the first word of a new sentence, and it is
			   short, and the next word does not fit. */
			room = width - cur_x;
			wlen = FUNC3(word);
			if (wlen > room ||
			    (newl && wlen < 4 && sp
			     && wlen + 1 + FUNC3(sp) > room
			     && (!(sp2 = FUNC1(sp, ' '))
				 || wlen + 1 + (sp2 - sp) > room))) {
				cur_y++;
				cur_x = x;
			}
			FUNC5(win, cur_y, cur_x);
			FUNC4(win, word);
			FUNC0(win, cur_y, cur_x);
			cur_x++;
			if (sp && *sp == ' ') {
				cur_x++;	/* double space */
				while (*++sp == ' ') ;
				newl = 1;
			} else
				newl = 0;
			word = sp;
		}
	}
}