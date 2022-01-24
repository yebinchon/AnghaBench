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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(int argc, char* argv[]) {
  if (argc == 2 && !FUNC4(argv[1], "--pass")) {
    FUNC0(stderr,"[%d] %s immediately returning 0\n", FUNC2(), argv[0]);
    return 0;
  }

  if (argc == 2 && !FUNC4(argv[1], "--fail")) {
    FUNC0(stderr,"[%d] %s immediately returning 1\n", FUNC2(), argv[0]);
    return 1;
  }

  if (argc == 2 && !FUNC4(argv[1], "--checkroot")) {
    int rc = (FUNC1() == 0);
    FUNC0(stderr,"[uid:%d] %s immediately returning (geteuid() == 0) = %d\n", FUNC1(), argv[0], rc);
    return rc;
  }

  if (argc == 2 && !FUNC4(argv[1], "--capmode")) {
    /* Expect to already be in capability mode: check we can't open a file */
    int rc = 0;

    int fd = FUNC3("/etc/passwd", O_RDONLY);
    if (fd > 0) {
      FUNC0(stderr,"[%d] %s unexpectedly able to open file\n", FUNC2(), argv[0]);
      rc = 1;
    }
    FUNC0(stderr,"[%d] %s --capmode returning %d\n", FUNC2(), argv[0], rc);
    return rc;
  }

  return -1;
}