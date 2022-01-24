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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 size_t FUNC5 (char*) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (char *dir)
{
  size_t dirlen;
  char *buf;
  struct stat s;
  bfd_boolean res;

  dirlen = FUNC5 (dir);
  /* sizeof counts the terminating NUL.  */
  buf = FUNC6 (dirlen + sizeof ("/ldscripts"));
  FUNC3 (buf, "%s/ldscripts", dir);

  res = FUNC4 (buf, &s) == 0 && FUNC0 (s.st_mode);
  FUNC1 (buf);
  if (res)
    FUNC2 (dir, FALSE);
  return res;
}