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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  hostname ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC6(char *hn)
{
  char *p = FUNC3(MAXPATHLEN);
  char *d;
  char path[MAXPATHLEN];

  FUNC5(p, hn, MAXPATHLEN);
  FUNC0(p, hostname);
  path[0] = '\0';

  do {
    d = FUNC2(p, '.');
    if (d) {
      *d = '\0';
      FUNC4(path, d + 1, sizeof(path));
      FUNC4(path, "/", sizeof(path));
    } else {
      FUNC4(path, p, sizeof(path));
    }
  } while (d);

  FUNC1("hostpath of '%s' is '%s'", hn, path);

  FUNC5(p, path, MAXPATHLEN);
  return p;
}