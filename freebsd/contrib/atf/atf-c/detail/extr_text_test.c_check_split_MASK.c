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
typedef  int /*<<< orphan*/  atf_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static
void
FUNC9(const char *str, const char *delim, const char *words[])
{
    atf_list_t list;
    const char **word;
    size_t i;

    FUNC8("Splitting '%s' with delimiter '%s'\n", str, delim);
    FUNC2(FUNC7(str, delim, &list));

    FUNC8("Expecting %zd words\n", FUNC3(words));
    FUNC0(FUNC6(&list), FUNC3(words));

    for (word = words, i = 0; *word != NULL; word++, i++) {
        FUNC8("Word at position %zd should be '%s'\n", i, words[i]);
        FUNC1((const char *)FUNC5(&list, i), words[i]);
    }

    FUNC4(&list);
}