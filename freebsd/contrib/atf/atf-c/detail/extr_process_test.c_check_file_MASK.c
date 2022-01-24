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
typedef  enum out_type { ____Placeholder_out_type } out_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int FUNC1 (char*,char*) ; 
#define  stderr_type 129 
#define  stdout_type 128 

__attribute__((used)) static
void
FUNC2(const enum out_type type)
{
    switch (type) {
    case stdout_type:
        FUNC0(FUNC1("stdout: msg", "stdout"));
        FUNC0(!FUNC1("stderr: msg", "stdout"));
        break;
    case stderr_type:
        FUNC0(FUNC1("stderr: msg", "stderr"));
        FUNC0(!FUNC1("stdout: msg", "stderr"));
        break;
    default:
        UNREACHABLE;
    }
}