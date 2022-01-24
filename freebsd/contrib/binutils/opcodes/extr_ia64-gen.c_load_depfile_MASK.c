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
typedef  enum ia64_dependency_mode { ____Placeholder_ia64_dependency_mode } ia64_dependency_mode ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IA64_DVS_OTHER ; 
 int IA64_DV_WAW ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14 (const char *filename, enum ia64_dependency_mode mode)
{
  FILE *fp = FUNC8 (filename, "r");
  char buf[1024];

  if (fp == NULL)
    FUNC4 (FUNC1("can't find %s for reading\n"), filename);

  FUNC7 (buf, sizeof(buf), fp);
  while (!FUNC6 (fp))
    {
      char *name, *tmp;
      int semantics;
      char *extra;
      char *regp, *chkp;

      if (FUNC7 (buf, sizeof(buf), fp) == NULL)
        break;

      while (FUNC0 (buf[FUNC12 (buf) - 1]))
        buf[FUNC12 (buf) - 1] = '\0';

      name = tmp = buf;
      while (*tmp != ';')
        ++tmp;
      *tmp++ = '\0';
      
      while (FUNC0 (*tmp))
        ++tmp;
      regp = tmp;
      tmp = FUNC10 (tmp, ';');
      if (!tmp)
        FUNC2 ();
      *tmp++ = 0;
      while (FUNC0 (*tmp))
        ++tmp;
      chkp = tmp;
      tmp = FUNC10 (tmp, ';');
      if (!tmp)
        FUNC2 ();
      *tmp++ = 0;
      while (FUNC0 (*tmp))
        ++tmp;
      semantics = FUNC9 (tmp);
      extra = semantics == IA64_DVS_OTHER ? FUNC13 (tmp) : NULL;

      /* For WAW entries, if the chks and regs differ, we need to enter the
         entries in both positions so that the tables will be parsed properly,
         without a lot of extra work.  */
      if (mode == IA64_DV_WAW && FUNC11 (regp, chkp) != 0)
        {
          FUNC3 (name, chkp, regp, semantics, mode, extra, 0);
          FUNC3 (name, regp, chkp, semantics, mode, extra, 1);
        }
      else
        {
          FUNC3 (name, chkp, regp, semantics, mode, extra, 0);
        }
    }
  FUNC5 (fp);
}