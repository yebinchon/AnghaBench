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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,long) ; 

__attribute__((used)) static int
FUNC8(char *path)
{
  char buf[MAXPATHLEN];
  int fd, len;

  FUNC7(buf, sizeof(buf), "%s/._hlfstmp_%lu", path, (long) FUNC1());
  if ((fd = FUNC2(buf, O_RDWR | O_CREAT, 0600)) < 0) {
    FUNC3(XLOG_ERROR, "cannot open %s: %m", buf);
    return -1;
  }
  len = FUNC4(buf);
  if (FUNC6(fd, buf, len) < len) {
    FUNC3(XLOG_ERROR, "cannot write \"%s\" (%d bytes) to %s : %m", buf, len, buf);
    FUNC0(fd);
    FUNC5(buf);		/* cleanup just in case */
    return -1;
  }
  if (FUNC5(buf) < 0) {
    FUNC3(XLOG_ERROR, "cannot unlink %s : %m", buf);
  }
  FUNC0(fd);
  return 0;
}