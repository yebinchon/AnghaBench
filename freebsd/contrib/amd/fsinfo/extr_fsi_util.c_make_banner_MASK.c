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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 char* hostname ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* username ; 

__attribute__((used)) static void
FUNC3(FILE *fp)
{
  time_t t = FUNC2((time_t *) NULL);
  char *cp = FUNC0(&t);

  FUNC1(fp,
	  "\
# *** This file was automatically generated -- DO NOT EDIT HERE ***\n\
# \"%s\" run by %s@%s on %s\
#\n\
",
	  progname, username, hostname, cp);
}