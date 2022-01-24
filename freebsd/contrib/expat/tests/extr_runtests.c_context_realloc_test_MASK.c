#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ ExtOption ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  XML_PARAM_ENTITY_PARSING_ALWAYS ; 
 scalar_t__ XML_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  XML_TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  external_entity_optioner ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  parser ; 
 int reallocation_count ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(const char *text)
{
    ExtOption options[] = {
        { FUNC0("foo"), "<!ELEMENT e EMPTY>"},
        { FUNC0("bar"), "<e/>" },
        { NULL, NULL }
    };
    int i;
    const int max_realloc_count = 6;

    for (i = 0; i < max_realloc_count; i++) {
        reallocation_count = i;
        FUNC3(parser, options);
        FUNC2(parser, XML_PARAM_ENTITY_PARSING_ALWAYS);
        FUNC1(parser, external_entity_optioner);
        if (FUNC4(parser, text, (int)FUNC8(text),
                                    XML_TRUE) != XML_STATUS_ERROR)
            break;
        /* See comment in test_nsalloc_xmlns() */
        FUNC7();
        FUNC6();
    }
    if (i == 0)
        FUNC5("Parsing worked despite failing reallocations");
    else if (i == max_realloc_count)
        FUNC5("Parsing failed even at max reallocation count");
}