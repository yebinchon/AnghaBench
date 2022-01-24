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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static XML_Char *
FUNC4(const XML_Char *s)
{
    size_t byte_count = (FUNC3(s) + 1) * sizeof(XML_Char);
    XML_Char *dup = FUNC1(byte_count);

    FUNC0(dup != NULL);
    FUNC2(dup, s, byte_count);
    return dup;
}