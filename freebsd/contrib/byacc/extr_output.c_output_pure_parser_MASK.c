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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * code_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  outline ; 
 int pure_parser ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void
FUNC2(FILE * fp)
{
    FUNC1(fp, '\n');

    if (fp == code_file)
	++outline;
    FUNC0(fp, "#define YYPURE %d\n", pure_parser);
    FUNC1(fp, '\n');
}