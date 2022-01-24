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
 int /*<<< orphan*/  banner ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  code_file ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ destructor ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(void)
{
    FUNC12(code_file, banner);
    FUNC1();
    FUNC10();
    FUNC11();
    FUNC3();
    FUNC7();
    FUNC0();
    FUNC8();
    FUNC6();
    FUNC4();
    FUNC9();
#if defined(YYBTYACC)
    if (destructor)
	finalize_destructors();
#endif
    FUNC5();
}