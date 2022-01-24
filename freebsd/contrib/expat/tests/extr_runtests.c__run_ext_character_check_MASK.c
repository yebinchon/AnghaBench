#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XML_Char ;
struct TYPE_4__ {int /*<<< orphan*/ * storage; } ;
typedef  TYPE_1__ ExtTest ;
typedef  int /*<<< orphan*/  CharData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ XML_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  XML_TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  ext_accumulate_characters ; 
 int /*<<< orphan*/  parser ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *text,
                         ExtTest *test_data,
                         const XML_Char *expected,
                         const char *file, int line)
{
    CharData storage;

    FUNC1(&storage);
    test_data->storage = &storage;
    FUNC3(parser, test_data);
    FUNC2(parser, ext_accumulate_characters);
    if (FUNC4(parser, text, (int)FUNC6(text),
                                XML_TRUE) == XML_STATUS_ERROR)
        FUNC5(parser, file, line);
    FUNC0(&storage, expected);
}