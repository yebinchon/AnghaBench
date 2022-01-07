
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOEXEC ;
 int ENOTDIR ;
 int errno ;
 int errorwithstatus (int,char*,char*,...) ;
 char* padvance (char const**,char const**,char*) ;
 int * strchr (char*,char) ;
 int strerror (int) ;
 int stunalloc (char*) ;
 int tryexec (char*,char**,char**) ;

void
shellexec(char **argv, char **envp, const char *path, int idx)
{
 char *cmdname;
 const char *opt;
 int e;

 if (strchr(argv[0], '/') != ((void*)0)) {
  tryexec(argv[0], argv, envp);
  e = errno;
 } else {
  e = ENOENT;
  while ((cmdname = padvance(&path, &opt, argv[0])) != ((void*)0)) {
   if (--idx < 0 && opt == ((void*)0)) {
    tryexec(cmdname, argv, envp);
    if (errno != ENOENT && errno != ENOTDIR)
     e = errno;
    if (e == ENOEXEC)
     break;
   }
   stunalloc(cmdname);
  }
 }


 if (e == ENOENT || e == ENOTDIR)
  errorwithstatus(127, "%s: not found", argv[0]);
 else
  errorwithstatus(126, "%s: %s", argv[0], strerror(e));
}
