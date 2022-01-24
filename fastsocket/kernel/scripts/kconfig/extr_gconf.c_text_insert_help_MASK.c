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
struct menu {int dummy; } ;
struct gstr {int dummy; } ;
typedef  int /*<<< orphan*/  GtkTextIter ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct menu*,struct gstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct menu*) ; 
 int /*<<< orphan*/  FUNC11 (struct gstr*) ; 
 char const* FUNC12 (struct gstr*) ; 
 struct gstr FUNC13 () ; 
 int /*<<< orphan*/  tag1 ; 
 int /*<<< orphan*/  tag2 ; 
 int /*<<< orphan*/  text_w ; 

__attribute__((used)) static void FUNC14(struct menu *menu)
{
	GtkTextBuffer *buffer;
	GtkTextIter start, end;
	const char *prompt = FUNC1(FUNC10(menu));
	struct gstr help = FUNC13();

	FUNC9(menu, &help);

	buffer = FUNC7(FUNC0(text_w));
	FUNC3(buffer, &start, &end);
	FUNC2(buffer, &start, &end);
	FUNC8(FUNC0(text_w), 15);

	FUNC4(buffer, &end);
	FUNC6(buffer, &end, prompt, -1, tag1,
					 NULL);
	FUNC5(buffer, "\n\n", 2);
	FUNC4(buffer, &end);
	FUNC6(buffer, &end, FUNC12(&help), -1, tag2,
					 NULL);
	FUNC11(&help);
}