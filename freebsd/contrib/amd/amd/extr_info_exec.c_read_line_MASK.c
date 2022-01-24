#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  exec_map_timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ gopt ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(char *buf, int size, int fd)
{
  int done = 0;

  while (FUNC0(buf, size, fd, gopt.exec_map_timeout)) {
    int len = FUNC1(buf);
    done += len;
    if (len > 1  &&  buf[len - 2] == '\\' &&
        buf[len - 1] == '\n') {
      buf += len - 2;
      size -= len - 2;
      *buf = '\n';
      buf[1] = '\0';
    } else {
      return done;
    }
  }

  return done;
}