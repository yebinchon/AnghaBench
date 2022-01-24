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
typedef  int /*<<< orphan*/  tmp_buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (char*) ; 

int
FUNC4(int argc, char *argv[])
{
  char tmp_buf[MAXPATHLEN], *wd;

  if (argc == 1) {
    wd = FUNC2(tmp_buf, sizeof(tmp_buf));
    if (wd == NULL) {
      FUNC1(stderr, "pawd: %s\n", tmp_buf);
      FUNC0(1);
    } else {
      FUNC1(stdout, "%s\n", wd);
    }
  } else {
    while (--argc) {
      wd = FUNC3(*++argv);
      FUNC1(stdout, "%s\n", wd);
    }
  }
  FUNC0(0);
}