
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int totalbuf ;
struct statfs {char* f_mntonname; int f_flags; int f_fstypename; int f_mntfromname; int f_bsize; } ;
struct stat {int st_mode; } ;
struct maxwidths {char* f_mntonname; int f_flags; int f_fstypename; int f_mntfromname; int f_bsize; } ;
struct iovec {int dummy; } ;
typedef int maxwidths ;
typedef int errmsg ;
struct TYPE_2__ {char* fspec; } ;


 int DEV_BSIZE ;
 int LC_ALL ;
 int MNAMELEN ;
 int MNT_IGNORE ;
 int MNT_NOEXEC ;
 int MNT_NOWAIT ;
 int MNT_RDONLY ;
 scalar_t__ S_ISCHR (int ) ;
 int Tflag ;
 int UNITS_2 ;
 int UNITS_SI ;
 int addstat (struct statfs*,struct statfs*) ;
 int aflag ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 int build_iovec_argf (struct iovec**,int*,char*,char*,char const*) ;
 int cflag ;
 scalar_t__ checkvfsname (int ,char const**) ;
 int exit (int) ;
 int free (char*) ;
 int free_iovec (struct iovec**,int*) ;
 int getmntinfo (struct statfs**,int ) ;
 char* getmntpt (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int hflag ;
 int iflag ;
 int kflag ;
 int lflag ;
 int long_options ;
 char* makenetvfslist () ;
 char** makevfslist (char*) ;
 struct statfs* malloc (int) ;
 TYPE_1__ mdev ;
 int memset (struct statfs*,int ,int) ;
 char* mkdtemp (char*) ;
 int nflag ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int prtstat (struct statfs*,struct statfs*) ;
 int regetmntinfo (struct statfs**,int,char const**) ;
 int rmdir (char*) ;
 int setenv (char*,char*,int) ;
 int setlocale (int ,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strdup (char*) ;
 int strlcpy (int ,char*,int ) ;
 int thousands ;
 int unmount (char*,int ) ;
 int update_maxwidths (struct statfs*,struct statfs*) ;
 int usage () ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_err (int,char*) ;
 int xo_errx (int,char*) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_warn (char*,...) ;
 int xo_warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 struct stat stbuf;
 struct statfs statfsbuf, totalbuf;
 struct maxwidths maxwidths;
 struct statfs *mntbuf;



 const char *fstype;




 char *mntpt;
 const char **vfslist;
 int i, mntsize;
 int ch, rv;




 fstype = "ufs";
 (void)setlocale(LC_ALL, "");
 memset(&maxwidths, 0, sizeof(maxwidths));
 memset(&totalbuf, 0, sizeof(totalbuf));
 totalbuf.f_bsize = DEV_BSIZE;
 strlcpy(totalbuf.f_mntfromname, "total", MNAMELEN);
 vfslist = ((void*)0);

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 while ((ch = getopt_long(argc, argv, "+abcgHhiklmnPt:T,", long_options,
     ((void*)0))) != -1)
  switch (ch) {
  case 'a':
   aflag = 1;
   break;
  case 'b':

  case 'P':






   if (kflag)
    break;
   setenv("BLOCKSIZE", "512", 1);
   hflag = 0;
   break;
  case 'c':
   cflag = 1;
   break;
  case 'g':
   setenv("BLOCKSIZE", "1g", 1);
   hflag = 0;
   break;
  case 'H':
   hflag = UNITS_SI;
   break;
  case 'h':
   hflag = UNITS_2;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'k':
   kflag++;
   setenv("BLOCKSIZE", "1024", 1);
   hflag = 0;
   break;
  case 'l':

   if (lflag)
    break;
   if (vfslist != ((void*)0))
    xo_errx(1, "-l and -t are mutually exclusive.");
   vfslist = makevfslist(makenetvfslist());
   lflag = 1;
   break;
  case 'm':
   setenv("BLOCKSIZE", "1m", 1);
   hflag = 0;
   break;
  case 'n':
   nflag = 1;
   break;
  case 't':
   if (lflag)
    xo_errx(1, "-l and -t are mutually exclusive.");
   if (vfslist != ((void*)0))
    xo_errx(1, "only one -t option may be specified");
   fstype = optarg;
   vfslist = makevfslist(optarg);
   break;
  case 'T':
   Tflag = 1;
   break;
  case ',':
   thousands = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 rv = 0;
 if (!*argv) {

  mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
  mntsize = regetmntinfo(&mntbuf, mntsize, vfslist);
 } else {

  mntbuf = malloc(argc * sizeof(*mntbuf));
  if (mntbuf == ((void*)0))
   xo_err(1, "malloc()");
  mntsize = 0;

 }

 xo_open_container("storage-system-information");
 xo_open_list("filesystem");


 for (; *argv; argv++) {
  if (stat(*argv, &stbuf) < 0) {
   if ((mntpt = getmntpt(*argv)) == ((void*)0)) {
    xo_warn("%s", *argv);
    rv = 1;
    continue;
   }
  } else if (S_ISCHR(stbuf.st_mode)) {
   if ((mntpt = getmntpt(*argv)) == ((void*)0)) {
    xo_warnx("%s: not mounted", *argv);
    rv = 1;
    continue;

   }
  } else
   mntpt = *argv;





  if (statfs(mntpt, &statfsbuf) < 0) {
   xo_warn("%s", mntpt);
   rv = 1;
   continue;
  }







  if (checkvfsname(statfsbuf.f_fstypename, vfslist)) {
   rv = 1;
   continue;
  }


  statfsbuf.f_flags &= ~MNT_IGNORE;


  mntbuf[mntsize++] = statfsbuf;
 }

 memset(&maxwidths, 0, sizeof(maxwidths));
 for (i = 0; i < mntsize; i++) {
  if (aflag || (mntbuf[i].f_flags & MNT_IGNORE) == 0) {
   update_maxwidths(&maxwidths, &mntbuf[i]);
   if (cflag)
    addstat(&totalbuf, &mntbuf[i]);
  }
 }
 for (i = 0; i < mntsize; i++)
  if (aflag || (mntbuf[i].f_flags & MNT_IGNORE) == 0)
   prtstat(&mntbuf[i], &maxwidths);

 xo_close_list("filesystem");

 if (cflag)
  prtstat(&totalbuf, &maxwidths);

 xo_close_container("storage-system-information");
 xo_finish();
 exit(rv);
}
