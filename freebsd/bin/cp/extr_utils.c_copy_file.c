
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; int st_size; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {char* p_path; } ;
struct TYPE_4__ {char* fts_path; struct stat* fts_statp; } ;
typedef TYPE_1__ FTSENT ;


 int BUFSIZE_MAX ;
 size_t BUFSIZE_SMALL ;
 int EOF ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int MAXPHYS ;
 size_t MIN (int ,int) ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ PHYSPAGES_THRESHOLD ;
 int PROT_READ ;
 int S_ISGID ;
 scalar_t__ S_ISREG (int) ;
 int S_ISUID ;
 char* YESNO ;
 int _SC_PHYS_PAGES ;
 scalar_t__ close (int) ;
 int cp_pct (scalar_t__,size_t) ;
 int err (int,char*) ;
 scalar_t__ fflag ;
 int fprintf (int ,char*,...) ;
 int getchar () ;
 scalar_t__ iflag ;
 scalar_t__ info ;
 scalar_t__ lflag ;
 scalar_t__ link (char*,char*) ;
 char* malloc (size_t) ;
 char* mmap (int *,size_t,int ,int ,int,scalar_t__) ;
 scalar_t__ munmap (char*,size_t) ;
 scalar_t__ nflag ;
 int open (char*,int,int) ;
 scalar_t__ pflag ;
 scalar_t__ preserve_fd_acls (int,int) ;
 int printf (char*,char*) ;
 int read (int,char*,size_t) ;
 scalar_t__ setfile (struct stat*,int) ;
 scalar_t__ sflag ;
 int stderr ;
 scalar_t__ symlink (char*,char*) ;
 scalar_t__ sysconf (int ) ;
 TYPE_2__ to ;
 int unlink (char*) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;
 scalar_t__ write (int,char*,size_t) ;

int
copy_file(const FTSENT *entp, int dne)
{
 static char *buf = ((void*)0);
 static size_t bufsize;
 struct stat *fs;
 ssize_t wcount;
 size_t wresid;
 off_t wtotal;
 int ch, checkch, from_fd, rcount, rval, to_fd;
 char *bufp;




 from_fd = to_fd = -1;
 if (!lflag && !sflag &&
     (from_fd = open(entp->fts_path, O_RDONLY, 0)) == -1) {
  warn("%s", entp->fts_path);
  return (1);
 }

 fs = entp->fts_statp;
 if (!dne) {

  if (nflag) {
   if (vflag)
    printf("%s not overwritten\n", to.p_path);
   rval = 1;
   goto done;
  } else if (iflag) {
   (void)fprintf(stderr, "overwrite %s? %s",
       to.p_path, "(y/n [n]) ");
   checkch = ch = getchar();
   while (ch != '\n' && ch != EOF)
    ch = getchar();
   if (checkch != 'y' && checkch != 'Y') {
    (void)fprintf(stderr, "not overwritten\n");
    rval = 1;
    goto done;
   }
  }

  if (fflag) {




   (void)unlink(to.p_path);
   if (!lflag && !sflag) {
    to_fd = open(to.p_path,
        O_WRONLY | O_TRUNC | O_CREAT,
        fs->st_mode & ~(S_ISUID | S_ISGID));
   }
  } else if (!lflag && !sflag) {

   to_fd = open(to.p_path, O_WRONLY | O_TRUNC, 0);
  }
 } else if (!lflag && !sflag) {
  to_fd = open(to.p_path, O_WRONLY | O_TRUNC | O_CREAT,
      fs->st_mode & ~(S_ISUID | S_ISGID));
 }

 if (!lflag && !sflag && to_fd == -1) {
  warn("%s", to.p_path);
  rval = 1;
  goto done;
 }

 rval = 0;

 if (!lflag && !sflag) {
  {
   if (buf == ((void*)0)) {





    if (sysconf(_SC_PHYS_PAGES) >
        PHYSPAGES_THRESHOLD)
     bufsize = MIN(BUFSIZE_MAX, MAXPHYS * 8);
    else
     bufsize = BUFSIZE_SMALL;
    buf = malloc(bufsize);
    if (buf == ((void*)0))
     err(1, "Not enough memory");
   }
   wtotal = 0;
   while ((rcount = read(from_fd, buf, bufsize)) > 0) {
    for (bufp = buf, wresid = rcount; ;
        bufp += wcount, wresid -= wcount) {
     wcount = write(to_fd, bufp, wresid);
     if (wcount <= 0)
      break;
     wtotal += wcount;
     if (info) {
      info = 0;
      (void)fprintf(stderr,
          "%s -> %s %3d%%\n",
          entp->fts_path, to.p_path,
          cp_pct(wtotal, fs->st_size));
     }
     if (wcount >= (ssize_t)wresid)
      break;
    }
    if (wcount != (ssize_t)wresid) {
     warn("%s", to.p_path);
     rval = 1;
     break;
    }
   }
   if (rcount < 0) {
    warn("%s", entp->fts_path);
    rval = 1;
   }
  }
 } else if (lflag) {
  if (link(entp->fts_path, to.p_path)) {
   warn("%s", to.p_path);
   rval = 1;
  }
 } else if (sflag) {
  if (symlink(entp->fts_path, to.p_path)) {
   warn("%s", to.p_path);
   rval = 1;
  }
 }
 if (!lflag && !sflag) {
  if (pflag && setfile(fs, to_fd))
   rval = 1;
  if (pflag && preserve_fd_acls(from_fd, to_fd) != 0)
   rval = 1;
  if (close(to_fd)) {
   warn("%s", to.p_path);
   rval = 1;
  }
 }

done:
 if (from_fd != -1)
  (void)close(from_fd);
 return (rval);
}
