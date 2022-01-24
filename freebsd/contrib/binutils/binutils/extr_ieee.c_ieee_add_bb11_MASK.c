#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_handle {int /*<<< orphan*/  vars; int /*<<< orphan*/  abfd; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {int flags; int index; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IEEE_SECTION_NUMBER_BASE ; 
 int SEC_CODE ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ ieee_be_record_enum ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,int) ; 
 void* FUNC7 (char const*,char) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (struct ieee_handle *info, asection *sec, bfd_vma low,
	       bfd_vma high)
{
  int kind;

  if (! FUNC2 (&info->vars))
    {
      if (! FUNC3 (info, &info->vars))
	return FALSE;
    }
  else
    {
      const char *filename, *modname;
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      const char *backslash;
#endif
      char *c, *s;

      /* Start the enclosing BB10 block.  */
      filename = FUNC0 (info->abfd);
      modname = FUNC7 (filename, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      backslash = strrchr (filename, '\\');
      if (modname == NULL || (backslash != NULL && backslash > modname))
	modname = backslash;
#endif

      if (modname != NULL)
	++modname;
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      else if (filename[0] && filename[1] == ':')
	modname = filename + 2;
#endif
      else
	modname = filename;

      c = FUNC8 (modname);
      s = FUNC7 (c, '.');
      if (s != NULL)
	*s = '\0';

      if (! FUNC3 (info, &info->vars)
	  || ! FUNC4 (info, (int) ieee_bb_record_enum)
	  || ! FUNC4 (info, 10)
	  || ! FUNC6 (info, 0)
	  || ! FUNC5 (info, c)
	  || ! FUNC5 (info, "")
	  || ! FUNC6 (info, 0)
	  || ! FUNC5 (info, "GNU objcopy"))
	return FALSE;

      FUNC1 (c);
    }

  if ((sec->flags & SEC_CODE) != 0)
    kind = 1;
  else if ((sec->flags & SEC_READONLY) != 0)
    kind = 3;
  else
    kind = 2;

  if (! FUNC4 (info, (int) ieee_bb_record_enum)
      || ! FUNC4 (info, 11)
      || ! FUNC6 (info, 0)
      || ! FUNC5 (info, "")
      || ! FUNC6 (info, kind)
      || ! FUNC6 (info, sec->index + IEEE_SECTION_NUMBER_BASE)
      || ! FUNC6 (info, low)
      || ! FUNC4 (info, (int) ieee_be_record_enum)
      || ! FUNC6 (info, high - low))
    return FALSE;

  return TRUE;
}