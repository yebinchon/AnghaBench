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
struct newtExitStruct {int dummy; } ;
typedef  int /*<<< orphan*/ * newtComponent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  NEWT_FLAG_SCROLL ; 
 int /*<<< orphan*/  NEWT_KEY_ENTER ; 
 int /*<<< orphan*/  NEWT_KEY_ESCAPE ; 
 int /*<<< orphan*/  NEWT_KEY_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int,int,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct newtExitStruct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC10(const char *title, char *bf, size_t size, int width)
{
	struct newtExitStruct es;
	newtComponent form, entry;
	const char *result;
	int err = -1;

	FUNC1(width, 1, title);
	form = FUNC3(NULL, NULL, 0);
	if (form == NULL)
		return -1;

	entry = FUNC2(0, 0, "0x", width, &result, NEWT_FLAG_SCROLL);
	if (entry == NULL)
		goto out_free_form;

	FUNC4(form, entry);
	FUNC5(form, NEWT_KEY_ENTER);
	FUNC5(form, NEWT_KEY_ESCAPE);
	FUNC5(form, NEWT_KEY_LEFT);
	FUNC5(form, FUNC0('c'));
	FUNC7(form, &es);

	if (result != NULL) {
		FUNC9(bf, result, size);
		err = 0;
	}
out_free_form:
	FUNC8();
	FUNC6(form);
	return err;
}