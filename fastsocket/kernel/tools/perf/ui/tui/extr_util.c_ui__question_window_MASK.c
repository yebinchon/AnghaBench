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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int,int,int) ; 
 int SLtt_Screen_Cols ; 
 int SLtt_Screen_Rows ; 
 char* FUNC7 (char const*,char) ; 
 int FUNC8 (int) ; 

int FUNC9(const char *title, const char *text,
			const char *exit_msg, int delay_secs)
{
	int x, y;
	int max_len = 0, nr_lines = 0;
	const char *t;

	t = text;
	while (1) {
		const char *sep = FUNC7(t, '\n');
		int len;

		if (sep == NULL)
			sep = FUNC7(t, '\0');
		len = sep - t;
		if (max_len < len)
			max_len = len;
		++nr_lines;
		if (*sep == '\0')
			break;
		t = sep + 1;
	}

	max_len += 2;
	nr_lines += 4;
	y = SLtt_Screen_Rows / 2 - nr_lines / 2,
	x = SLtt_Screen_Cols / 2 - max_len / 2;

	FUNC3(0);
	FUNC0(y, x++, nr_lines, max_len);
	if (title) {
		FUNC1(y, x + 1);
		FUNC5((char *)title);
	}
	FUNC1(++y, x);
	nr_lines -= 2;
	max_len -= 2;
	FUNC6((unsigned char *)text, y, x,
				   nr_lines, max_len, 1);
	FUNC1(y + nr_lines - 2, x);
	FUNC4((char *)" ", max_len);
	FUNC1(y + nr_lines - 1, x);
	FUNC4((char *)exit_msg, max_len);
	FUNC2();
	return FUNC8(delay_secs);
}