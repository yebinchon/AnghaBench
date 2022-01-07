
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_blksize; int st_mode; } ;
typedef scalar_t__ ssize_t ;


 int BUFSIZE_MAX ;
 size_t BUFSIZE_SMALL ;
 size_t MAX (size_t,size_t) ;
 int MAXPHYS ;
 size_t MIN (int ,int) ;
 long PHYSPAGES_THRESHOLD ;
 scalar_t__ S_ISREG (int ) ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 int err (int,char*) ;
 int filename ;
 int fileno (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* malloc (size_t) ;
 scalar_t__ read (int,char*,size_t) ;
 int rval ;
 int stdout ;
 long sysconf (int ) ;
 int warn (char*,int ) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static void
raw_cat(int rfd)
{
 long pagesize;
 int off, wfd;
 ssize_t nr, nw;
 static size_t bsize;
 static char *buf = ((void*)0);
 struct stat sbuf;

 wfd = fileno(stdout);
 if (buf == ((void*)0)) {
  if (fstat(wfd, &sbuf))
   err(1, "stdout");
  if (S_ISREG(sbuf.st_mode)) {

   if (sysconf(_SC_PHYS_PAGES) > PHYSPAGES_THRESHOLD)
    bsize = MIN(BUFSIZE_MAX, MAXPHYS * 8);
   else
    bsize = BUFSIZE_SMALL;
  } else {
   bsize = sbuf.st_blksize;
   pagesize = sysconf(_SC_PAGESIZE);
   if (pagesize > 0)
    bsize = MAX(bsize, (size_t)pagesize);
  }
  if ((buf = malloc(bsize)) == ((void*)0))
   err(1, "malloc() failure of IO buffer");
 }
 while ((nr = read(rfd, buf, bsize)) > 0)
  for (off = 0; nr; nr -= nw, off += nw)
   if ((nw = write(wfd, buf + off, (size_t)nr)) < 0)
    err(1, "stdout");
 if (nr < 0) {
  warn("%s", filename);
  rval = 1;
 }
}
