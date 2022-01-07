
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t dupfd; } ;
struct TYPE_3__ {int fd; int type; char* expfname; } ;
union node {TYPE_2__ ndup; TYPE_1__ nfile; } ;
struct stat {int st_mode; } ;


 int Cflag ;
 int EEXIST ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_ISREG (int ) ;
 int abort () ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int error (char*,...) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int,...) ;
 int openhere (union node*) ;
 int stat (char const*,struct stat*) ;
 char* strerror (int) ;

__attribute__((used)) static void
openredirect(union node *redir, char memory[10])
{
 struct stat sb;
 int fd = redir->nfile.fd;
 const char *fname;
 int f;
 int e;

 memory[fd] = 0;
 switch (redir->nfile.type) {
 case 134:
  fname = redir->nfile.expfname;
  if ((f = open(fname, O_RDONLY)) < 0)
   error("cannot open %s: %s", fname, strerror(errno));
  break;
 case 132:
  fname = redir->nfile.expfname;
  if ((f = open(fname, O_RDWR|O_CREAT, 0666)) < 0)
   error("cannot create %s: %s", fname, strerror(errno));
  break;
 case 130:
  if (Cflag) {
   fname = redir->nfile.expfname;
   if (stat(fname, &sb) == -1) {
    if ((f = open(fname, O_WRONLY|O_CREAT|O_EXCL, 0666)) < 0)
     error("cannot create %s: %s", fname, strerror(errno));
   } else if (!S_ISREG(sb.st_mode)) {
    if ((f = open(fname, O_WRONLY, 0666)) < 0)
     error("cannot create %s: %s", fname, strerror(errno));
    if (fstat(f, &sb) != -1 && S_ISREG(sb.st_mode)) {
     close(f);
     error("cannot create %s: %s", fname,
         strerror(EEXIST));
    }
   } else
    error("cannot create %s: %s", fname,
        strerror(EEXIST));
   break;
  }

 case 135:
  fname = redir->nfile.expfname;
  if ((f = open(fname, O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0)
   error("cannot create %s: %s", fname, strerror(errno));
  break;
 case 136:
  fname = redir->nfile.expfname;
  if ((f = open(fname, O_WRONLY|O_CREAT|O_APPEND, 0666)) < 0)
   error("cannot create %s: %s", fname, strerror(errno));
  break;
 case 129:
 case 133:
  if (redir->ndup.dupfd >= 0) {
   if (memory[redir->ndup.dupfd])
    memory[fd] = 1;
   else {
    if (dup2(redir->ndup.dupfd, fd) < 0)
     error("%d: %s", redir->ndup.dupfd,
       strerror(errno));
   }
  } else {
   close(fd);
  }
  return;
 case 131:
 case 128:
  f = openhere(redir);
  break;
 default:
  abort();
 }
 if (f != fd) {
  if (dup2(f, fd) == -1) {
   e = errno;
   close(f);
   error("%d: %s", fd, strerror(e));
  }
  close(f);
 }
}
