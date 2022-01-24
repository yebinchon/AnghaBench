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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  regs ; 
 char* s ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2()
{
    FUNC0(regs); /* %parse-param regs is not actually used here */
    FUNC0(base); /* %parse-param base is not actually used here */
    FUNC1(stderr, "%s\n", s);
}