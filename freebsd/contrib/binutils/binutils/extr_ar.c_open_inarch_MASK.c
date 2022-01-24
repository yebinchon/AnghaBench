#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_13__ {struct TYPE_13__* archive_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  bfd_error_no_error ; 
 scalar_t__ bfd_error_no_more_archived_files ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 () ; 
 char* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_1__* FUNC9 (char const*,char const*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char**) ; 
 int /*<<< orphan*/  FUNC16 (char**) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  operation_alters_arch ; 
 char const* output_filename ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 char* program_name ; 
 int /*<<< orphan*/  silent_create ; 
 scalar_t__ FUNC20 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

bfd *
FUNC22 (const char *archive_filename, const char *file)
{
  const char *target;
  bfd **last_one;
  bfd *next_one;
  struct stat sbuf;
  bfd *arch;
  char **matching;

  FUNC12 (bfd_error_no_error);

  target = NULL;

  if (FUNC20 (archive_filename, &sbuf) != 0)
    {
#if !defined(__GO32__) || defined(__DJGPP__)

      /* FIXME: I don't understand why this fragment was ifndef'ed
	 away for __GO32__; perhaps it was in the days of DJGPP v1.x.
	 stat() works just fine in v2.x, so I think this should be
	 removed.  For now, I enable it for DJGPP v2. -- EZ.  */

/* KLUDGE ALERT! Temporary fix until I figger why
   stat() is wrong ... think it's buried in GO32's IDT - Jax */
      if (errno != ENOENT)
	FUNC5 (archive_filename);
#endif

      if (!operation_alters_arch)
	{
	  FUNC14 (stderr, "%s: ", program_name);
	  FUNC19 (archive_filename);
	  FUNC17 ();
	  return NULL;
	}

      /* Try to figure out the target to use for the archive from the
         first object on the list.  */
      if (file != NULL)
	{
	  bfd *obj;

	  obj = FUNC9 (file, NULL);
	  if (obj != NULL)
	    {
	      if (FUNC2 (obj, bfd_object))
		target = FUNC7 (obj);
	      (void) FUNC4 (obj);
	    }
	}

      /* Create an empty archive.  */
      arch = FUNC11 (archive_filename, target);
      if (arch == NULL
	  || ! FUNC13 (arch, bfd_archive)
	  || ! FUNC4 (arch))
	FUNC5 (archive_filename);
      else if (!silent_create)
        FUNC18 (FUNC1("creating %s"), archive_filename);

      /* If we die creating a new archive, don't leave it around.  */
      output_filename = archive_filename;
    }

  arch = FUNC9 (archive_filename, target);
  if (arch == NULL)
    {
    bloser:
      FUNC5 (archive_filename);
    }

  if (! FUNC3 (arch, bfd_archive, &matching))
    {
      FUNC8 (archive_filename);
      if (FUNC6 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC16 (matching);
	  FUNC15 (matching);
	}
      FUNC21 (1);
    }

  last_one = &(arch->archive_next);
  /* Read all the contents right away, regardless.  */
  for (next_one = FUNC10 (arch, NULL);
       next_one;
       next_one = FUNC10 (arch, next_one))
    {
      FUNC0 (1);
      *last_one = next_one;
      last_one = &next_one->archive_next;
    }
  *last_one = (bfd *) NULL;
  if (FUNC6 () != bfd_error_no_more_archived_files)
    goto bloser;
  return arch;
}