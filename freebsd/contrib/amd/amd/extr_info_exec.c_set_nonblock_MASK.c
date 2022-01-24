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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(int fd)
{
  int val;

  if (fd < 0)
     return 0;

  if ((val = FUNC0(fd, F_GETFL, 0)) < 0) {
    FUNC1(XLOG_WARNING, "set_nonblock fcntl F_GETFL error: %m");
    return 0;
  }

  val |= O_NONBLOCK;
  if (FUNC0(fd, F_SETFL, val) < 0) {
    FUNC1(XLOG_WARNING, "set_nonblock fcntl F_SETFL error: %m");
    return 0;
  }

  return 1;
}