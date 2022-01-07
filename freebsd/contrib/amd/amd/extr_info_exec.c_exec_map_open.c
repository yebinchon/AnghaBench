
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int FD_SETSIZE ;
 int O_NOCTTY ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int) ;
 scalar_t__ errno ;
 int execve (char*,char**,int *) ;
 int exit (scalar_t__) ;
 int open (char*,int) ;
 scalar_t__ pipe (int*) ;
 int set_nonblock (int) ;
 int vfork () ;
 scalar_t__ waitpid (int ,int ,int ) ;

__attribute__((used)) static int
exec_map_open(char *emap, char *key)
{
  pid_t p1, p2;
  int pdes[2], nullfd, i;
  char *argv[3];

  if (!emap)
    return 0;

  argv[0] = emap;
  argv[1] = key;
  argv[2] = ((void*)0);

  if ((nullfd = open("/dev/null", O_WRONLY|O_NOCTTY)) < 0)
    return -1;

  if (pipe(pdes) < 0) {
    close(nullfd);
    return -1;
  }

  switch ((p1 = vfork())) {
  case -1:

    close(nullfd);
    close(pdes[0]);
    close(pdes[1]);
    return -1;
  case 0:

    p2 = vfork();
    switch (p2) {
    case -1:

      exit(errno);
    case 0:

      if (pdes[1] != STDOUT_FILENO) {
 dup2(pdes[1], STDOUT_FILENO);
 close(pdes[1]);
      }

      if (nullfd != STDERR_FILENO) {
 dup2(nullfd, STDERR_FILENO);
 close(nullfd);
      }

      for (i=0; i<FD_SETSIZE; i++)
 if (i != STDOUT_FILENO && i != STDERR_FILENO)
   close(i);


      if (!set_nonblock(STDOUT_FILENO)) {
 close(STDOUT_FILENO);
 exit(-1);
      }

      execve(emap, argv, ((void*)0));
      exit(errno);
    }


    exit(0);
  }


  close(nullfd);
  close(pdes[1]);


  while (waitpid(p1, 0, 0) < 0)
    if (errno != EINTR)
      exit(errno);


  if (!set_nonblock(pdes[0])) {
    close(pdes[0]);
    return -1;
  }

  return pdes[0];
}
