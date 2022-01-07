
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pid_t ;
typedef int FILE ;


 int ENOENT ;
 int EXIT_TROUBLE ;
 int INT_MAX ;
 size_t MAX (int,int ) ;
 int PTRDIFF_MAX ;
 size_t SIZE_MAX ;
 int STAT_BLOCKSIZE (struct stat) ;
 int STDOUT_FILENO ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 char* _ (char*) ;
 int _exit (int) ;
 size_t block_read (int,char*,size_t) ;
 scalar_t__ close (int) ;
 char const* diff_program ;
 int dup2 (int,int) ;
 int errno ;
 int error (int,int,char*,char const*,int) ;
 int execvp (char const*,char**) ;
 int fatal (char*) ;
 int fileno (int *) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int pclose (int *) ;
 int perror_with_exit (char*) ;
 scalar_t__ pipe (int*) ;
 int * popen (char*,char*) ;
 int quote_system_arg (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strip_trailing_cr ;
 scalar_t__ text ;
 int vfork () ;
 scalar_t__ waitpid (int,int*,int ) ;
 int xalloc_die () ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static char *
read_diff (char const *filea,
    char const *fileb,
    char **output_placement)
{
  char *diff_result;
  size_t current_chunk_size, total;
  int fd, wstatus, status;
  int werrno = 0;
  struct stat pipestat;
  FILE *fpipe;
  char const args[] = " --horizon-lines=100 -- ";
  char *command = xmalloc (quote_system_arg (0, diff_program)
      + sizeof "-a"
      + sizeof "--strip-trailing-cr"
      + sizeof args - 1
      + quote_system_arg (0, filea) + 1
      + quote_system_arg (0, fileb) + 1);
  char *p = command;
  p += quote_system_arg (p, diff_program);
  if (text)
    {
      strcpy (p, " -a");
      p += 3;
    }
  if (strip_trailing_cr)
    {
      strcpy (p, " --strip-trailing-cr");
      p += 20;
    }
  strcpy (p, args);
  p += sizeof args - 1;
  p += quote_system_arg (p, filea);
  *p++ = ' ';
  p += quote_system_arg (p, fileb);
  *p = 0;
  errno = 0;
  fpipe = popen (command, "r");
  if (!fpipe)
    perror_with_exit (command);
  free (command);
  fd = fileno (fpipe);



  if (fstat (fd, &pipestat) != 0)
    perror_with_exit ("fstat");
  current_chunk_size = MAX (1, STAT_BLOCKSIZE (pipestat));
  diff_result = xmalloc (current_chunk_size);
  total = 0;

  for (;;)
    {
      size_t bytes_to_read = current_chunk_size - total;
      size_t bytes = block_read (fd, diff_result + total, bytes_to_read);
      total += bytes;
      if (bytes != bytes_to_read)
 {
   if (bytes == SIZE_MAX)
     perror_with_exit (_("read failed"));
   break;
 }
      if (PTRDIFF_MAX / 2 <= current_chunk_size)
 xalloc_die ();
      current_chunk_size *= 2;
      diff_result = xrealloc (diff_result, current_chunk_size);
    }

  if (total != 0 && diff_result[total-1] != '\n')
    fatal ("invalid diff format; incomplete last line");

  *output_placement = diff_result;



  wstatus = pclose (fpipe);
  if (wstatus == -1)
    werrno = errno;
  status = ! werrno && WIFEXITED (wstatus) ? WEXITSTATUS (wstatus) : INT_MAX;

  if (EXIT_TROUBLE <= status)
    error (EXIT_TROUBLE, werrno,
    _(status == 126
      ? "subsidiary program `%s' could not be invoked"
      : status == 127
      ? "subsidiary program `%s' not found"
      : status == INT_MAX
      ? "subsidiary program `%s' failed"
      : "subsidiary program `%s' failed (exit status %d)"),
    diff_program, status);

  return diff_result + total;
}
