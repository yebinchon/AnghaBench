
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {scalar_t__ fts_level; int fts_info; char* fts_path; TYPE_1__* fts_statp; int fts_accpath; int fts_errno; } ;
struct TYPE_5__ {int st_flags; } ;
typedef TYPE_2__ FTSENT ;
typedef int FTS ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ ERANGE ;
 int FTS_COMFOLLOW ;



 int FTS_LOGICAL ;

 int FTS_PHYSICAL ;
 scalar_t__ FTS_ROOTLEVEL ;
 int FTS_SKIP ;
 int FTS_XDEV ;
 int SIGINFO ;
 int chflagsat (int ,int ,int,int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int * fts_open (char**,int,int ) ;
 TYPE_2__* fts_read (int *) ;
 int fts_set (int *,TYPE_2__*,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 scalar_t__ siginfo ;
 int siginfo_handler ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 scalar_t__ strtofflags (char**,int*,int*) ;
 long strtol (char*,char**,int) ;
 int usage () ;
 int warn (char*,char*) ;
 int warnx (char*,char*,int ) ;

int
main(int argc, char *argv[])
{
 FTS *ftsp;
 FTSENT *p;
 u_long clear, newflags, set;
 long val;
 int Hflag, Lflag, Rflag, fflag, hflag, vflag, xflag;
 int ch, fts_options, oct, rval;
 char *flags, *ep;

 Hflag = Lflag = Rflag = fflag = hflag = vflag = xflag = 0;
 while ((ch = getopt(argc, argv, "HLPRfhvx")) != -1)
  switch (ch) {
  case 'H':
   Hflag = 1;
   Lflag = 0;
   break;
  case 'L':
   Lflag = 1;
   Hflag = 0;
   break;
  case 'P':
   Hflag = Lflag = 0;
   break;
  case 'R':
   Rflag = 1;
   break;
  case 'f':
   fflag = 1;
   break;
  case 'h':
   hflag = 1;
   break;
  case 'v':
   vflag++;
   break;
  case 'x':
   xflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argv += optind;
 argc -= optind;

 if (argc < 2)
  usage();

 (void)signal(SIGINFO, siginfo_handler);

 if (Rflag) {
  if (hflag)
   errx(1, "the -R and -h options may not be "
       "specified together.");
  if (Lflag) {
   fts_options = FTS_LOGICAL;
  } else {
   fts_options = FTS_PHYSICAL;

   if (Hflag) {
    fts_options |= FTS_COMFOLLOW;
   }
  }
 } else if (hflag) {
  fts_options = FTS_PHYSICAL;
 } else {
  fts_options = FTS_LOGICAL;
 }
 if (xflag)
  fts_options |= FTS_XDEV;

 flags = *argv;
 if (*flags >= '0' && *flags <= '7') {
  errno = 0;
  val = strtol(flags, &ep, 8);
  if (val < 0)
   errno = ERANGE;
  if (errno)
                        err(1, "invalid flags: %s", flags);
                if (*ep)
                        errx(1, "invalid flags: %s", flags);
  set = val;
                oct = 1;
 } else {
  if (strtofflags(&flags, &set, &clear))
                        errx(1, "invalid flag: %s", flags);
  clear = ~clear;
  oct = 0;
 }

 if ((ftsp = fts_open(++argv, fts_options , 0)) == ((void*)0))
  err(1, ((void*)0));

 for (rval = 0; (p = fts_read(ftsp)) != ((void*)0);) {
  int atflag;

  if ((fts_options & FTS_LOGICAL) ||
      ((fts_options & FTS_COMFOLLOW) &&
      p->fts_level == FTS_ROOTLEVEL))
   atflag = 0;
  else
   atflag = AT_SYMLINK_NOFOLLOW;

  switch (p->fts_info) {
  case 131:
   if (!Rflag)
    fts_set(ftsp, p, FTS_SKIP);
   continue;
  case 130:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   break;
  case 129:
  case 128:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   continue;
  default:
   break;
  }
  if (oct)
   newflags = set;
  else
   newflags = (p->fts_statp->st_flags | set) & clear;
  if (newflags == p->fts_statp->st_flags)
   continue;
  if (chflagsat(AT_FDCWD, p->fts_accpath, newflags,
      atflag) == -1 && !fflag) {
   warn("%s", p->fts_path);
   rval = 1;
  } else if (vflag || siginfo) {
   (void)printf("%s", p->fts_path);
   if (vflag > 1 || siginfo)
    (void)printf(": 0%lo -> 0%lo",
        (u_long)p->fts_statp->st_flags,
        newflags);
   (void)printf("\n");
   siginfo = 0;
  }
 }
 if (errno)
  err(1, "fts_read");
 exit(rval);
}
