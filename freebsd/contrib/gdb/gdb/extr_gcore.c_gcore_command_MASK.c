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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  bfd_core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  target_has_execution ; 
 void* FUNC22 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24 (char *args, int from_tty)
{
  struct cleanup *old_chain;
  char *corefilename, corefilename_buffer[40];
  asection *note_sec = NULL;
  bfd *obfd;
  void *note_data = NULL;
  int note_size = 0;

  /* No use generating a corefile without a target process.  */
  if (!target_has_execution)
    FUNC20 ();

  if (args && *args)
    corefilename = args;
  else
    {
      /* Default corefile name is "core.PID".  */
      FUNC21 (corefilename_buffer, "core.%d", FUNC0 (inferior_ptid));
      corefilename = corefilename_buffer;
    }

  if (info_verbose)
    FUNC17 (gdb_stdout,
		      "Opening corefile '%s' for output.\n", corefilename);

  /* Open the output file.  */
  obfd = FUNC4 (corefilename, FUNC14 ());
  if (!obfd)
    FUNC16 ("Failed to open '%s' for output.", corefilename);

  /* Need a cleanup that will close the file (FIXME: delete it?).  */
  old_chain = FUNC19 (obfd);

  FUNC6 (obfd, bfd_core);
  FUNC5 (obfd, FUNC12 (), FUNC13 ());

  /* An external target method must build the notes section.  */
  note_data = FUNC22 (obfd, &note_size);

  /* Create the note section.  */
  if (note_data != NULL && note_size != 0)
    {
      note_sec = FUNC3 (obfd, "note0");
      if (note_sec == NULL)
	FUNC16 ("Failed to create 'note' section for corefile: %s",
	       FUNC1 (FUNC2 ()));

      FUNC11 (obfd, note_sec, 0);
      FUNC9 (obfd, note_sec,
			     SEC_HAS_CONTENTS | SEC_READONLY | SEC_ALLOC);
      FUNC7 (obfd, note_sec, 0);
      FUNC10 (obfd, note_sec, note_size);
    }

  /* Now create the memory/load sections.  */
  if (FUNC18 (obfd) == 0)
    FUNC16 ("gcore: failed to get corefile memory sections from target.");

  /* Write out the contents of the note section.  */
  if (note_data != NULL && note_size != 0)
    {
      if (!FUNC8 (obfd, note_sec, note_data, 0, note_size))
	FUNC23 ("writing note section (%s)", FUNC1 (FUNC2 ()));
    }

  /* Succeeded.  */
  FUNC17 (gdb_stdout, "Saved corefile %s\n", corefilename);

  /* Clean-ups will close the output file and free malloc memory.  */
  FUNC15 (old_chain);
  return;
}