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
typedef  enum XML_Error { ____Placeholder_XML_Error } XML_Error ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XML_STATUS_OK ; 
 int /*<<< orphan*/  XML_TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  parser ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *text, enum XML_Error errorCode, const char *errorMessage,
                const char *file, int lineno)
{
    if (FUNC1(parser, text, (int)FUNC4(text), XML_TRUE) == XML_STATUS_OK)
        /* Hackish use of _fail_unless() macro, but let's us report
           the right filename and line number. */
        FUNC2(0, file, lineno, errorMessage);
    if (FUNC0(parser) != errorCode)
        FUNC3(parser, file, lineno);
}