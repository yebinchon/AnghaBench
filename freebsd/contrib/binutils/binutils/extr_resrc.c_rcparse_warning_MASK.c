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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char const*) ; 
 char* rc_filename ; 
 int rc_lineno ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2 (const char *msg)
{
  FUNC1 (stderr, FUNC0("%s:%d: %s\n"), rc_filename, rc_lineno, msg);
}