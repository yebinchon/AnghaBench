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
struct stat {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int EXIT_TROUBLE ; 
 int INT_MAX ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PTRDIFF_MAX ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct stat) ; 
 int STDOUT_FILENO ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t FUNC6 (int,char*,size_t) ; 
 scalar_t__ FUNC7 (int) ; 
 char const* diff_program ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (int,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int,struct stat*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int*) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char*) ; 
 int FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 scalar_t__ strip_trailing_cr ; 
 scalar_t__ text ; 
 int FUNC21 () ; 
 scalar_t__ FUNC22 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 char* FUNC24 (size_t) ; 
 char* FUNC25 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC26 (char const *filea,
	   char const *fileb,
	   char **output_placement)
{
  char *diff_result;
  size_t current_chunk_size, total;
  int fd, wstatus, status;
  int werrno = 0;
  struct stat pipestat;

#if HAVE_WORKING_FORK || HAVE_WORKING_VFORK

  char const *argv[9];
  char const **ap;
  int fds[2];
  pid_t pid;

  ap = argv;
  *ap++ = diff_program;
  if (text)
    *ap++ = "-a";
  if (strip_trailing_cr)
    *ap++ = "--strip-trailing-cr";
  *ap++ = "--horizon-lines=100";
  *ap++ = "--";
  *ap++ = filea;
  *ap++ = fileb;
  *ap = 0;

  if (pipe (fds) != 0)
    perror_with_exit ("pipe");

  pid = vfork ();
  if (pid == 0)
    {
      /* Child */
      close (fds[0]);
      if (fds[1] != STDOUT_FILENO)
	{
	  dup2 (fds[1], STDOUT_FILENO);
	  close (fds[1]);
	}

      /* The cast to (char **) is needed for portability to older
	 hosts with a nonstandard prototype for execvp.  */
      execvp (diff_program, (char **) argv);

      _exit (errno == ENOENT ? 127 : 126);
    }

  if (pid == -1)
    perror_with_exit ("fork");

  close (fds[1]);		/* Prevent erroneous lack of EOF */
  fd = fds[0];

#else

  FILE *fpipe;
  char const args[] = " --horizon-lines=100 -- ";
  char *command = FUNC24 (FUNC19 (0, diff_program)
			   + sizeof "-a"
			   + sizeof "--strip-trailing-cr"
			   + sizeof args - 1
			   + FUNC19 (0, filea) + 1
			   + FUNC19 (0, fileb) + 1);
  char *p = command;
  p += FUNC19 (p, diff_program);
  if (text)
    {
      FUNC20 (p, " -a");
      p += 3;
    }
  if (strip_trailing_cr)
    {
      FUNC20 (p, " --strip-trailing-cr");
      p += 20;
    }
  FUNC20 (p, args);
  p += sizeof args - 1;
  p += FUNC19 (p, filea);
  *p++ = ' ';
  p += FUNC19 (p, fileb);
  *p = 0;
  errno = 0;
  fpipe = FUNC18 (command, "r");
  if (!fpipe)
    FUNC16 (command);
  FUNC13 (command);
  fd = FUNC12 (fpipe);

#endif

  if (FUNC14 (fd, &pipestat) != 0)
    FUNC16 ("fstat");
  current_chunk_size = FUNC0 (1, FUNC1 (pipestat));
  diff_result = FUNC24 (current_chunk_size);
  total = 0;

  for (;;)
    {
      size_t bytes_to_read = current_chunk_size - total;
      size_t bytes = FUNC6 (fd, diff_result + total, bytes_to_read);
      total += bytes;
      if (bytes != bytes_to_read)
	{
	  if (bytes == SIZE_MAX)
	    FUNC16 (FUNC4("read failed"));
	  break;
	}
      if (PTRDIFF_MAX / 2 <= current_chunk_size)
	FUNC23 ();
      current_chunk_size *= 2;
      diff_result = FUNC25 (diff_result, current_chunk_size);
    }

  if (total != 0 && diff_result[total-1] != '\n')
    FUNC11 ("invalid diff format; incomplete last line");

  *output_placement = diff_result;

#if ! (HAVE_WORKING_FORK || HAVE_WORKING_VFORK)

  wstatus = FUNC15 (fpipe);
  if (wstatus == -1)
    werrno = errno;

#else

  if (close (fd) != 0)
    perror_with_exit ("close");
  if (waitpid (pid, &wstatus, 0) < 0)
    perror_with_exit ("waitpid");

#endif

  status = ! werrno && FUNC3 (wstatus) ? FUNC2 (wstatus) : INT_MAX;

  if (EXIT_TROUBLE <= status)
    FUNC9 (EXIT_TROUBLE, werrno,
	   FUNC4(status == 126
	     ? "subsidiary program `%s' could not be invoked"
	     : status == 127
	     ? "subsidiary program `%s' not found"
	     : status == INT_MAX
	     ? "subsidiary program `%s' failed"
	     : "subsidiary program `%s' failed (exit status %d)"),
	   diff_program, status);

  return diff_result + total;
}