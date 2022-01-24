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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  WNOHANG ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC6() {
  int procfd;
  int rc =  FUNC2(&procfd, 0);
  if (rc < 0) {
    FUNC1(stderr, "pdfork() failed rc=%d errno=%d %s\n", rc, errno, FUNC4(errno));
    FUNC0(1);
  }
  if (rc == 0) { // Child process
    FUNC3(1);
    FUNC0(123);
  }
  FUNC1(stderr, "pdfork()ed child pid=%ld procfd=%d\n", (long)rc, procfd);
  FUNC3(2);  // Allow child to complete
  pid_t child = FUNC5(-1, &rc, WNOHANG);
  if (child == 0) {
    FUNC1(stderr, "waitpid(): no completed child found\n");
  } else if (child < 0) {
    FUNC1(stderr, "waitpid(): failed errno=%d %s\n", errno, FUNC4(errno));
  } else {
    FUNC1(stderr, "waitpid(): found completed child %ld\n", (long)child);
  }
  return 0;
}