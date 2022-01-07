
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 int close (int) ;
 char* errmsg ;
 int * fdopen (int,char*) ;
 scalar_t__ isbinary ;
 int mkstemp (int ) ;
 scalar_t__ newline_added ;
 int perror (int ) ;
 int sfn ;
 int * sfp ;
 int strcpy (int ,char*) ;
 int umask (int) ;

int
open_sbuf(void)
{
 int fd;
 int u;

 isbinary = newline_added = 0;
 u = umask(077);
 strcpy(sfn, "/tmp/ed.XXXXXX");
 if ((fd = mkstemp(sfn)) == -1 ||
     (sfp = fdopen(fd, "w+")) == ((void*)0)) {
  if (fd != -1)
   close(fd);
  perror(sfn);
  errmsg = "cannot open temp file";
  umask(u);
  return ERR;
 }
 umask(u);
 return 0;
}
