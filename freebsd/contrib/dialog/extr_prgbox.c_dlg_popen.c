
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _exit (int) ;
 int close (int) ;
 char** dlg_string_to_argv (char*) ;
 int dup2 (int,int) ;
 int execvp (char*,char**) ;
 int * fdopen (int,char const*) ;
 int fork () ;
 char* malloc (int ) ;
 scalar_t__ pipe (int*) ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;

FILE *
dlg_popen(const char *command, const char *type)
{
    FILE *result = 0;
    int fd[2];
    char *blob;
    char **argv;

    if ((*type == 'r' || *type != 'w') && pipe(fd) == 0) {
 switch (fork()) {
 case -1:
     (void) close(fd[0]);
     (void) close(fd[1]);
     break;
 case 0:
     if (*type == 'r') {
  if (fd[1] != STDOUT_FILENO) {
      (void) dup2(fd[1], STDOUT_FILENO);
      (void) close(fd[1]);
  }
  (void) dup2(STDOUT_FILENO, STDERR_FILENO);
  (void) close(fd[0]);
     } else {
  if (fd[0] != STDIN_FILENO) {
      (void) dup2(fd[0], STDIN_FILENO);
      (void) close(fd[0]);
  }
  (void) close(fd[1]);
  (void) close(STDERR_FILENO);
     }





     if ((blob = malloc(10 + strlen(command))) != 0) {
  sprintf(blob, "sh -c \"%s\"", command);
  argv = dlg_string_to_argv(blob);
  execvp("sh", argv);
     }
     _exit(127);

 default:
     if (*type == 'r') {
  result = fdopen(fd[0], type);
  (void) close(fd[1]);
     } else {
  result = fdopen(fd[1], type);
  (void) close(fd[0]);
     }
     break;
 }
    }

    return result;
}
