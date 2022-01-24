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
struct ieee_handle {char const* filename; char* modname; unsigned int name_indx; int /*<<< orphan*/  vars; int /*<<< orphan*/  types; int /*<<< orphan*/ * ranges; int /*<<< orphan*/  linenos; int /*<<< orphan*/  cxx; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ieee_bb_record_enum ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char const*,char) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, const char *filename)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  const char *modname;
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  const char *backslash;
#endif
  char *c, *s;
  unsigned int nindx;

  if (info->filename != NULL)
    {
      if (! FUNC1 (info))
	return FALSE;
    }

  info->filename = filename;
  modname = FUNC6 (filename, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  /* We could have a mixed forward/back slash case.  */
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

  c = FUNC7 (modname);
  s = FUNC6 (c, '.');
  if (s != NULL)
    *s = '\0';
  info->modname = c;

  if (! FUNC2 (info, &info->types)
      || ! FUNC2 (info, &info->vars)
      || ! FUNC2 (info, &info->cxx)
      || ! FUNC2 (info, &info->linenos))
    return FALSE;
  info->ranges = NULL;

  /* Always include a BB1 and a BB3 block.  That is what the output of
     the MRI linker seems to look like.  */
  if (! FUNC0 (info, &info->types)
      || ! FUNC3 (info, (int) ieee_bb_record_enum)
      || ! FUNC3 (info, 1)
      || ! FUNC5 (info, 0)
      || ! FUNC4 (info, info->modname))
    return FALSE;

  nindx = info->name_indx;
  ++info->name_indx;
  if (! FUNC0 (info, &info->vars)
      || ! FUNC3 (info, (int) ieee_bb_record_enum)
      || ! FUNC3 (info, 3)
      || ! FUNC5 (info, 0)
      || ! FUNC4 (info, info->modname))
    return FALSE;

  return TRUE;
}