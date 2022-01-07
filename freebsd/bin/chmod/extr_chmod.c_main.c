
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_7__ {scalar_t__ fts_level; int fts_info; char* fts_path; TYPE_1__* fts_statp; int fts_accpath; int fts_errno; } ;
struct TYPE_6__ {int st_mode; } ;
typedef TYPE_2__ FTSENT ;
typedef int FTS ;


 int ALLPERMS ;
 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int FTS_COMFOLLOW ;




 int FTS_LOGICAL ;

 int FTS_PHYSICAL ;
 scalar_t__ FTS_ROOTLEVEL ;
 int FTS_SKIP ;
 int SIGINFO ;
 int S_IFMT ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fchmodat (int ,int ,int,int) ;
 int * fts_open (char**,int,int ) ;
 TYPE_2__* fts_read (int *) ;
 int fts_set (int *,TYPE_2__*,int ) ;
 int getmode (int*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ may_have_nfs4acl (TYPE_2__*,int) ;
 size_t optind ;
 int printf (char*,...) ;
 int* setmode (char*) ;
 scalar_t__ siginfo ;
 int siginfo_handler ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 int strmode (int,char*) ;
 int usage () ;
 int warn (char*,char*) ;
 int warnx (char*,char*,int ) ;

int
main(int argc, char *argv[])
{
 FTS *ftsp;
 FTSENT *p;
 mode_t *set;
 int Hflag, Lflag, Rflag, ch, fflag, fts_options, hflag, rval;
 int vflag;
 char *mode;
 mode_t newmode;

 set = ((void*)0);
 Hflag = Lflag = Rflag = fflag = hflag = vflag = 0;
 while ((ch = getopt(argc, argv, "HLPRXfghorstuvwx")) != -1)
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






  case 'g': case 'o': case 'r': case 's':
  case 't': case 'u': case 'w': case 'X': case 'x':
   if (argv[optind - 1][0] == '-' &&
       argv[optind - 1][1] == ch &&
       argv[optind - 1][2] == '\0')
    --optind;
   goto done;
  case 'v':
   vflag++;
   break;
  case '?':
  default:
   usage();
  }
done: argv += optind;
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

 mode = *argv;
 if ((set = setmode(mode)) == ((void*)0))
  errx(1, "invalid file mode: %s", mode);

 if ((ftsp = fts_open(++argv, fts_options, 0)) == ((void*)0))
  err(1, "fts_open");
 for (rval = 0; (p = fts_read(ftsp)) != ((void*)0);) {
  int atflag;

  if ((fts_options & FTS_LOGICAL) ||
      ((fts_options & FTS_COMFOLLOW) &&
      p->fts_level == FTS_ROOTLEVEL))
   atflag = 0;
  else
   atflag = AT_SYMLINK_NOFOLLOW;

  switch (p->fts_info) {
  case 132:
   if (!Rflag)
    fts_set(ftsp, p, FTS_SKIP);
   break;
  case 131:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   break;
  case 130:
   continue;
  case 129:
  case 128:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   continue;
  default:
   break;
  }
  newmode = getmode(set, p->fts_statp->st_mode);





  if (may_have_nfs4acl(p, hflag) == 0 &&
      (newmode & ALLPERMS) == (p->fts_statp->st_mode & ALLPERMS))
    continue;
  if (fchmodat(AT_FDCWD, p->fts_accpath, newmode, atflag) == -1
      && !fflag) {
   warn("%s", p->fts_path);
   rval = 1;
  } else if (vflag || siginfo) {
   (void)printf("%s", p->fts_path);

   if (vflag > 1 || siginfo) {
    char m1[12], m2[12];

    strmode(p->fts_statp->st_mode, m1);
    strmode((p->fts_statp->st_mode &
        S_IFMT) | newmode, m2);
    (void)printf(": 0%o [%s] -> 0%o [%s]",
        p->fts_statp->st_mode, m1,
        (p->fts_statp->st_mode & S_IFMT) |
        newmode, m2);
   }
   (void)printf("\n");
   siginfo = 0;
  }
 }
 if (errno)
  err(1, "fts_read");
 exit(rval);
}
