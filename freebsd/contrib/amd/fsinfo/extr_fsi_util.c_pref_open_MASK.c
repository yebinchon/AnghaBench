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
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 

FILE *
FUNC6(char *pref, char *hn, void (*hdr) (FILE *, char *), char *arg)
{
  char p[MAXPATHLEN];
  FILE *ef;

  FUNC5(p, sizeof(p), "%s%s", pref, hn);
  FUNC2("Writing %s info for %s to %s", pref, hn, p);
  ef = FUNC1(p, "w");
  if (ef) {
    (*hdr) (ef, arg);
    FUNC3(ef);
  } else {
    FUNC0("can't open %s for writing", p);
  }

  return ef;
}