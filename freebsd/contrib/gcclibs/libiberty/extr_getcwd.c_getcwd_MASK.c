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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

char *
FUNC4 (char *buf, size_t len)
{
  char ourbuf[MAXPATHLEN];
  char *result;

  result = FUNC0 (ourbuf);
  if (result) {
    if (FUNC3 (ourbuf) >= len) {
      errno = ERANGE;
      return 0;
    }
    if (!buf) {
       buf = (char*)FUNC1(len);
       if (!buf) {
           errno = ENOMEM;
	   return 0;
       }
    }
    FUNC2 (buf, ourbuf);
  }
  return buf;
}