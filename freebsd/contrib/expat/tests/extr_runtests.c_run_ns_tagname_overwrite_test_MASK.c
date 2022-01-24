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
typedef  int /*<<< orphan*/  XML_Char ;
typedef  int /*<<< orphan*/  CharData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ XML_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XML_TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  overwrite_end_checker ; 
 int /*<<< orphan*/  overwrite_start_checker ; 
 int /*<<< orphan*/  parser ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *text, const XML_Char *result)
{
    CharData storage;
    FUNC1(&storage);
    FUNC3(parser, &storage);
    FUNC2(parser,
                          overwrite_start_checker, overwrite_end_checker);
    if (FUNC4(parser, text, (int)FUNC5(text), XML_TRUE) == XML_STATUS_ERROR)
        FUNC6(parser);
    FUNC0(&storage, result);
}