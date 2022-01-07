
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result ;
typedef int WAIT_T ;
typedef int Buffer ;


 int BUFSIZ ;
 int Buf_AddBytes (int *,int,char*) ;
 char* Buf_Destroy (int *,int ) ;
 int Buf_Init (int *,int ) ;
 int Buf_Size (int *) ;
 int EINTR ;
 int FALSE ;
 int JobReapChild (int,int ,int ) ;
 int Shell_Init () ;
 int UNCONST (char const**) ;
 int Var_ExportVars () ;
 int WEXITSTATUS (int ) ;
 int WIFSIGNALED (int ) ;
 int _exit (int) ;
 char* bmake_malloc (int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int execv (int ,int ) ;
 int pipe (int*) ;
 int read (int,char*,int) ;
 char* shellName ;
 int shellPath ;
 int vFork () ;
 int waitpid (int,int *,int ) ;

char *
Cmd_Exec(const char *cmd, const char **errnum)
{
    const char *args[4];
    int fds[2];
    int cpid;
    int pid;
    char *res;
    WAIT_T status;
    Buffer buf;
    char *cp;
    int cc;
    int savederr;


    *errnum = ((void*)0);

    if (!shellName)
 Shell_Init();



    args[0] = shellName;
    args[1] = "-c";
    args[2] = cmd;
    args[3] = ((void*)0);




    if (pipe(fds) == -1) {
 *errnum = "Couldn't create pipe for \"%s\"";
 goto bad;
    }




    switch (cpid = vFork()) {
    case 0:



 (void)close(fds[0]);






 (void)dup2(fds[1], 1);
 (void)close(fds[1]);

 Var_ExportVars();

 (void)execv(shellPath, UNCONST(args));
 _exit(1);


    case -1:
 *errnum = "Couldn't exec \"%s\"";
 goto bad;

    default:



 (void)close(fds[1]);

 savederr = 0;
 Buf_Init(&buf, 0);

 do {
     char result[BUFSIZ];
     cc = read(fds[0], result, sizeof(result));
     if (cc > 0)
  Buf_AddBytes(&buf, cc, result);
 }
 while (cc > 0 || (cc == -1 && errno == EINTR));
 if (cc == -1)
     savederr = errno;




 (void)close(fds[0]);




 while(((pid = waitpid(cpid, &status, 0)) != cpid) && (pid >= 0)) {
     JobReapChild(pid, status, FALSE);
     continue;
 }
 cc = Buf_Size(&buf);
 res = Buf_Destroy(&buf, FALSE);

 if (savederr != 0)
     *errnum = "Couldn't read shell's output for \"%s\"";

 if (WIFSIGNALED(status))
     *errnum = "\"%s\" exited on a signal";
 else if (WEXITSTATUS(status) != 0)
     *errnum = "\"%s\" returned non-zero status";





 res[cc] = '\0';
 cp = &res[cc];

 if (cc > 0 && *--cp == '\n') {



     *cp-- = '\0';
 }
 while (cp >= res) {
     if (*cp == '\n') {
  *cp = ' ';
     }
     cp--;
 }
 break;
    }
    return res;
bad:
    res = bmake_malloc(1);
    *res = '\0';
    return res;
}
