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
struct reg_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 char FUNC0 (char) ; 
 char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  arm_reg_hsh ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct reg_entry* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 char* original_case_string ; 
 size_t FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC10 (char * newname, char *p)
{
  struct reg_entry *old;
  char *oldname, *nbuf;
  size_t nlen;

  /* The input scrubber ensures that whitespace after the mnemonic is
     collapsed to single spaces.  */
  oldname = p;
  if (FUNC9 (oldname, " .req ", 6) != 0)
    return 0;

  oldname += 6;
  if (*oldname == '\0')
    return 0;

  old = FUNC5 (arm_reg_hsh, oldname);
  if (!old)
    {
      FUNC4 (FUNC2("unknown register '%s' -- .req ignored"), oldname);
      return 1;
    }

  /* If TC_CASE_SENSITIVE is defined, then newname already points to
     the desired alias name, and p points to its end.  If not, then
     the desired alias name is in the global original_case_string.  */
#ifdef TC_CASE_SENSITIVE
  nlen = p - newname;
#else
  newname = original_case_string;
  nlen = FUNC8 (newname);
#endif

  nbuf = FUNC3 (nlen + 1);
  FUNC7 (nbuf, newname, nlen);
  nbuf[nlen] = '\0';

  /* Create aliases under the new name as stated; an all-lowercase
     version of the new name; and an all-uppercase version of the new
     name.  */
  FUNC6 (nbuf, old->number, old->type);

  for (p = nbuf; *p; p++)
    *p = FUNC1 (*p);

  if (FUNC9 (nbuf, newname, nlen))
    FUNC6 (nbuf, old->number, old->type);

  for (p = nbuf; *p; p++)
    *p = FUNC0 (*p);

  if (FUNC9 (nbuf, newname, nlen))
    FUNC6 (nbuf, old->number, old->type);

  return 1;
}