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
 int /*<<< orphan*/  PERF_COLOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 

void FUNC7(const char *value, int value_len, const char *var,
		char *dst)
{
	const char *ptr = value;
	int len = value_len;
	int attr = -1;
	int fg = -2;
	int bg = -2;

	if (!FUNC6(value, "reset", len)) {
		FUNC5(dst, PERF_COLOR_RESET);
		return;
	}

	/* [fg [bg]] [attr] */
	while (len > 0) {
		const char *word = ptr;
		int val, wordlen = 0;

		while (len > 0 && !FUNC1(word[wordlen])) {
			wordlen++;
			len--;
		}

		ptr = word + wordlen;
		while (len > 0 && FUNC1(*ptr)) {
			ptr++;
			len--;
		}

		val = FUNC3(word, wordlen);
		if (val >= -1) {
			if (fg == -2) {
				fg = val;
				continue;
			}
			if (bg == -2) {
				bg = val;
				continue;
			}
			goto bad;
		}
		val = FUNC2(word, wordlen);
		if (val < 0 || attr != -1)
			goto bad;
		attr = val;
	}

	if (attr >= 0 || fg >= 0 || bg >= 0) {
		int sep = 0;

		*dst++ = '\033';
		*dst++ = '[';
		if (attr >= 0) {
			*dst++ = '0' + attr;
			sep++;
		}
		if (fg >= 0) {
			if (sep++)
				*dst++ = ';';
			if (fg < 8) {
				*dst++ = '3';
				*dst++ = '0' + fg;
			} else {
				dst += FUNC4(dst, "38;5;%d", fg);
			}
		}
		if (bg >= 0) {
			if (sep++)
				*dst++ = ';';
			if (bg < 8) {
				*dst++ = '4';
				*dst++ = '0' + bg;
			} else {
				dst += FUNC4(dst, "48;5;%d", bg);
			}
		}
		*dst++ = 'm';
	}
	*dst = 0;
	return;
bad:
	FUNC0("bad color value '%.*s' for variable '%s'", value_len, value, var);
}