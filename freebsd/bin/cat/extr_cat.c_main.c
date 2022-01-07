
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_whence; int l_type; scalar_t__ l_start; scalar_t__ l_len; } ;


 int EXIT_FAILURE ;
 int F_SETLKW ;
 int F_WRLCK ;
 int LC_CTYPE ;
 int SEEK_SET ;
 int STDOUT_FILENO ;
 int bflag ;
 void* eflag ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ fclose (int ) ;
 int fcntl (int ,int ,struct flock*) ;
 int getopt (int,char**,char*) ;
 int lflag ;
 int nflag ;
 int optind ;
 int rval ;
 int scanfiles (char**,int) ;
 int setbuf (int ,int *) ;
 int setlocale (int ,char*) ;
 int sflag ;
 int stdout ;
 void* tflag ;
 int usage () ;
 void* vflag ;

int
main(int argc, char *argv[])
{
 int ch;
 struct flock stdout_lock;

 setlocale(LC_CTYPE, "");

 while ((ch = getopt(argc, argv, "belnstuv")) != -1)
  switch (ch) {
  case 'b':
   bflag = nflag = 1;
   break;
  case 'e':
   eflag = vflag = 1;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'n':
   nflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 't':
   tflag = vflag = 1;
   break;
  case 'u':
   setbuf(stdout, ((void*)0));
   break;
  case 'v':
   vflag = 1;
   break;
  default:
   usage();
  }
 argv += optind;

 if (lflag) {
  stdout_lock.l_len = 0;
  stdout_lock.l_start = 0;
  stdout_lock.l_type = F_WRLCK;
  stdout_lock.l_whence = SEEK_SET;
  if (fcntl(STDOUT_FILENO, F_SETLKW, &stdout_lock) == -1)
   err(EXIT_FAILURE, "stdout");
 }

 if (bflag || eflag || nflag || sflag || tflag || vflag)
  scanfiles(argv, 1);
 else
  scanfiles(argv, 0);
 if (fclose(stdout))
  err(1, "stdout");
 exit(rval);

}
