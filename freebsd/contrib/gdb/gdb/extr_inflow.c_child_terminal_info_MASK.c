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

/* Variables and functions */
 int O_ACCMODE ; 
 int O_APPEND ; 
 int O_BINARY ; 
 int O_NDELAY ; 
 int O_NONBLOCK ; 
#define  O_RDONLY 130 
#define  O_RDWR 129 
#define  O_WRONLY 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ inferior_process_group ; 
 int /*<<< orphan*/  inferior_ttystate ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin_serial ; 
 int tflags_inferior ; 

void
FUNC3 (char *args, int from_tty)
{
  if (!FUNC0 ())
    {
      FUNC1 ("This GDB does not control a terminal.\n");
      return;
    }

  FUNC1 ("Inferior's terminal status (currently saved by GDB):\n");

  /* First the fcntl flags.  */
  {
    int flags;

    flags = tflags_inferior;

    FUNC1 ("File descriptor flags = ");

#ifndef O_ACCMODE
#define O_ACCMODE (O_RDONLY | O_WRONLY | O_RDWR)
#endif
    /* (O_ACCMODE) parens are to avoid Ultrix header file bug */
    switch (flags & (O_ACCMODE))
      {
      case O_RDONLY:
	FUNC1 ("O_RDONLY");
	break;
      case O_WRONLY:
	FUNC1 ("O_WRONLY");
	break;
      case O_RDWR:
	FUNC1 ("O_RDWR");
	break;
      }
    flags &= ~(O_ACCMODE);

#ifdef O_NONBLOCK
    if (flags & O_NONBLOCK)
      printf_filtered (" | O_NONBLOCK");
    flags &= ~O_NONBLOCK;
#endif

#if defined (O_NDELAY)
    /* If O_NDELAY and O_NONBLOCK are defined to the same thing, we will
       print it as O_NONBLOCK, which is good cause that is what POSIX
       has, and the flag will already be cleared by the time we get here.  */
    if (flags & O_NDELAY)
      printf_filtered (" | O_NDELAY");
    flags &= ~O_NDELAY;
#endif

    if (flags & O_APPEND)
      FUNC1 (" | O_APPEND");
    flags &= ~O_APPEND;

#if defined (O_BINARY)
    if (flags & O_BINARY)
      printf_filtered (" | O_BINARY");
    flags &= ~O_BINARY;
#endif

    if (flags)
      FUNC1 (" | 0x%x", flags);
    FUNC1 ("\n");
  }

#ifdef PROCESS_GROUP_TYPE
  printf_filtered ("Process group = %d\n",
		   (int) inferior_process_group);
#endif

  FUNC2 (stdin_serial, inferior_ttystate, gdb_stdout);
}