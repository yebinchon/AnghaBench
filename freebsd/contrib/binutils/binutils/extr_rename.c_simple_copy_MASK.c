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
 int COPY_BUF ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int errno ; 
 int FUNC2 (char const*,int,...) ; 
 int FUNC3 (int,char*,int) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static int
FUNC5 (const char *from, const char *to)
{
  int fromfd, tofd, nread;
  int saved;
  char buf[COPY_BUF];

  fromfd = FUNC2 (from, O_RDONLY | O_BINARY);
  if (fromfd < 0)
    return -1;
#ifdef O_CREAT
  tofd = open (to, O_CREAT | O_WRONLY | O_TRUNC | O_BINARY, 0777);
#else
  tofd = FUNC1 (to, 0777);
#endif
  if (tofd < 0)
    {
      saved = errno;
      FUNC0 (fromfd);
      errno = saved;
      return -1;
    }
  while ((nread = FUNC3 (fromfd, buf, sizeof buf)) > 0)
    {
      if (FUNC4 (tofd, buf, nread) != nread)
	{
	  saved = errno;
	  FUNC0 (fromfd);
	  FUNC0 (tofd);
	  errno = saved;
	  return -1;
	}
    }
  saved = errno;
  FUNC0 (fromfd);
  FUNC0 (tofd);
  if (nread < 0)
    {
      errno = saved;
      return -1;
    }
  return 0;
}