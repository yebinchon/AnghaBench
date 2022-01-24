#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_4__ {scalar_t__ ar_max_namelen; } ;

/* Variables and functions */
 scalar_t__ ar_truncate ; 
 scalar_t__ full_pathname ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 void* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static const char *
FUNC4 (const char *file, bfd *abfd)
{
  const char *filename;

  if (full_pathname)
    return file;

  filename = FUNC2 (file, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  {
    /* We could have foo/bar\\baz, or foo\\bar, or d:bar.  */
    char *bslash = strrchr (file, '\\');
    if (filename == NULL || (bslash != NULL && bslash > filename))
      filename = bslash;
    if (filename == NULL && file[0] != '\0' && file[1] == ':')
      filename = file + 1;
  }
#endif
  if (filename != (char *) NULL)
    filename++;
  else
    filename = file;

  if (ar_truncate
      && abfd != NULL
      && FUNC1 (filename) > abfd->xvec->ar_max_namelen)
    {
      char *s;

      /* Space leak.  */
      s = (char *) FUNC3 (abfd->xvec->ar_max_namelen + 1);
      FUNC0 (s, filename, abfd->xvec->ar_max_namelen);
      s[abfd->xvec->ar_max_namelen] = '\0';
      filename = s;
    }

  return filename;
}