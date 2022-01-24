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
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGTTOU ; 
 void FUNC0 () ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* inferior_thisrun_terminal ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void (*) ()) ; 

void
FUNC8 (void)
{
  int tty;

  if (inferior_thisrun_terminal == 0)
    return;
#if !defined(__GO32__) && !defined(_WIN32)
#ifdef TIOCNOTTY
  /* Disconnect the child process from our controlling terminal.  On some
     systems (SVR4 for example), this may cause a SIGTTOU, so temporarily
     ignore SIGTTOU. */
  tty = open ("/dev/tty", O_RDWR);
  if (tty > 0)
    {
      void (*osigttou) ();

      osigttou = (void (*)()) signal (SIGTTOU, SIG_IGN);
      ioctl (tty, TIOCNOTTY, 0);
      close (tty);
      signal (SIGTTOU, osigttou);
    }
#endif

  /* Now open the specified new terminal.  */

#ifdef USE_O_NOCTTY
  tty = open (inferior_thisrun_terminal, O_RDWR | O_NOCTTY);
#else
  tty = FUNC5 (inferior_thisrun_terminal, O_RDWR);
#endif
  if (tty == -1)
    {
      FUNC6 (inferior_thisrun_terminal, errno);
      FUNC1 (1);
    }

  /* Avoid use of dup2; doesn't exist on all systems.  */
  if (tty != 0)
    {
      FUNC2 (0);
      FUNC3 (tty);
    }
  if (tty != 1)
    {
      FUNC2 (1);
      FUNC3 (tty);
    }
  if (tty != 2)
    {
      FUNC2 (2);
      FUNC3 (tty);
    }
  if (tty > 2)
    FUNC2 (tty);
#endif /* !go32 && !win32 */
}