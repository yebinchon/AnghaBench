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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  section_map_func ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ count_section ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  ethernet ; 
 int /*<<< orphan*/ * exec_bfd ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ load_section ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static void
FUNC18 (char *filename, int from_tty)
{
  bfd *abfd;
  unsigned int data_count = 0;
  time_t start_time, end_time;	/* for timing of download */
  int section_count = 0;
  unsigned char buffer[8];

  /* If we are not using the ethernet, use the normal monitor load,
     which sends S-records over the serial link.  */
  if (!ethernet)
    {
      FUNC10 (filename, from_tty);
      return;
    }

  /* Open the file.  */
  if (filename == NULL || filename[0] == 0)
    filename = FUNC6 (1);
  abfd = FUNC3 (filename, 0);
  if (!abfd)
    FUNC5 ("Unable to open file %s\n", filename);
  if (FUNC0 (abfd, bfd_object) == 0)
    FUNC5 ("File is not an object file\n");

  /* Output the "vconsi" command to get the monitor in the communication
     state where it will accept a load command.  This will cause
     the monitor to emit a packet before each prompt, so ignore the packet.  */
  FUNC9 ("vconsi\r");
  FUNC7 ();
  FUNC8 (NULL, 0);

  /* Output the "Rm" (load) command and respond to the subsequent "open"
     packet by sending an ACK packet.  */
  FUNC9 ("Rm\r");
  FUNC7 ();
  FUNC14 ('a', "", 0, 0);

  /* Output the fast load header (number of sections and starting address).  */
  FUNC2 ((bfd *) abfd, (section_map_func) count_section,
			 &section_count);
  FUNC16 (&buffer[0], (long) section_count);
  if (exec_bfd)
    FUNC16 (&buffer[4], (long) FUNC1 (exec_bfd));
  else
    FUNC16 (&buffer[4], 0);
  FUNC12 (buffer, sizeof (buffer));

  /* Output the section data.  */
  start_time = FUNC15 (NULL);
  FUNC2 (abfd, (section_map_func) load_section, &data_count);
  end_time = FUNC15 (NULL);

  /* Acknowledge the close packet and put the monitor back into
     "normal" mode so it won't send packets any more.  */
  FUNC7 ();
  FUNC14 ('a', "", 0, 0);
  FUNC8 (NULL, 0);
  FUNC9 ("vconsx\r");
  FUNC8 (NULL, 0);

  /* Print start address and download performance information.  */
  FUNC11 ("Start address 0x%lx\n", (long) FUNC1 (abfd));
  FUNC13 (data_count, start_time, end_time);

  /* Finally, make the PC point at the start address */
  if (exec_bfd)
    FUNC17 (FUNC1 (exec_bfd));

  inferior_ptid = null_ptid;		/* No process now */

  /* This is necessary because many things were based on the PC at the
     time that we attached to the monitor, which is no longer valid
     now that we have loaded new code (and just changed the PC).
     Another way to do this might be to call normal_stop, except that
     the stack may not be valid, and things would get horribly
     confused... */
  FUNC4 ();
}