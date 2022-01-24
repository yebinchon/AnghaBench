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
struct stab_write_handle {long type_index; } ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  N_LSYM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct stab_write_handle*,long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stab_write_handle*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stab_write_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (size_t) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (void *p, const char *tag, const char **names,
		bfd_signed_vma *vals)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  size_t len;
  const char **pn;
  char *buf;
  long index = 0;
  bfd_signed_vma *pv;

  if (names == NULL)
    {
      FUNC0 (tag != NULL);

      buf = (char *) FUNC9 (10 + FUNC8 (tag));
      FUNC2 (buf, "xe%s:", tag);
      /* FIXME: The size is just a guess.  */
      if (! FUNC4 (info, buf, 0, FALSE, 4))
	return FALSE;
      FUNC1 (buf);
      return TRUE;
    }

  len = 10;
  if (tag != NULL)
    len += FUNC8 (tag);
  for (pn = names; *pn != NULL; pn++)
    len += FUNC8 (*pn) + 20;

  buf = (char *) FUNC9 (len);

  if (tag == NULL)
    FUNC7 (buf, "e");
  else
    {
      index = info->type_index;
      ++info->type_index;
      FUNC2 (buf, "%s:T%ld=e", tag, index);
    }

  for (pn = names, pv = vals; *pn != NULL; pn++, pv++)
    FUNC2 (buf + FUNC8 (buf), "%s:%ld,", *pn, (long) *pv);
  FUNC6 (buf, ";");

  if (tag == NULL)
    {
      /* FIXME: The size is just a guess.  */
      if (! FUNC4 (info, buf, 0, FALSE, 4))
	return FALSE;
    }
  else
    {
      /* FIXME: The size is just a guess.  */
      if (! FUNC5 (info, N_LSYM, 0, 0, buf)
	  || ! FUNC3 (info, index, 4))
	return FALSE;
    }

  FUNC1 (buf);

  return TRUE;
}