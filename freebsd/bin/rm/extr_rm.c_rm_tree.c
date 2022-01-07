
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int st_flags; } ;
struct TYPE_5__ {int fts_info; scalar_t__ fts_errno; char* fts_path; int fts_accpath; TYPE_4__* fts_statp; int fts_number; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 scalar_t__ ENOENT ;





 int FTS_NOSTAT ;


 int FTS_PHYSICAL ;
 int FTS_SKIP ;

 int FTS_WHITEOUT ;
 int FTS_XDEV ;
 int SF_APPEND ;
 int SF_IMMUTABLE ;
 int SKIPPED ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 scalar_t__ Wflag ;
 int check (char*,int ,TYPE_4__*) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*,int ) ;
 int eval ;
 scalar_t__ fflag ;
 int fts_close (int *) ;
 int * fts_open (char**,int,int *) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 int iflag ;
 int info ;
 int lchflags (int ,int) ;
 int printf (char*,char*) ;
 int rmdir (int ) ;
 scalar_t__ stdin_ok ;
 int strerror (scalar_t__) ;
 int uid ;
 int undelete (int ) ;
 int unlink (int ) ;
 int vflag ;
 int warn (char*,char*) ;
 int warnx (char*,char*,int ) ;
 scalar_t__ xflag ;

__attribute__((used)) static void
rm_tree(char **argv)
{
 FTS *fts;
 FTSENT *p;
 int needstat;
 int flags;
 int rval;





 needstat = !uid || (!fflag && !iflag && stdin_ok);







 flags = FTS_PHYSICAL;
 if (!needstat)
  flags |= FTS_NOSTAT;
 if (Wflag)
  flags |= FTS_WHITEOUT;
 if (xflag)
  flags |= FTS_XDEV;
 if (!(fts = fts_open(argv, flags, ((void*)0)))) {
  if (fflag && errno == ENOENT)
   return;
  err(1, "fts_open");
 }
 while ((p = fts_read(fts)) != ((void*)0)) {
  switch (p->fts_info) {
  case 134:
   if (!fflag || p->fts_errno != ENOENT) {
    warnx("%s: %s",
        p->fts_path, strerror(p->fts_errno));
    eval = 1;
   }
   continue;
  case 132:
   errx(1, "%s: %s", p->fts_path, strerror(p->fts_errno));
  case 130:




   if (!needstat)
    break;
   if (!fflag || p->fts_errno != ENOENT) {
    warnx("%s: %s",
        p->fts_path, strerror(p->fts_errno));
    eval = 1;
   }
   continue;
  case 135:

   if (!fflag && !check(p->fts_path, p->fts_accpath,
       p->fts_statp)) {
    (void)fts_set(fts, p, FTS_SKIP);
    p->fts_number = 1;
   }
   else if (!uid &&
     (p->fts_statp->st_flags & (UF_APPEND|UF_IMMUTABLE)) &&
     !(p->fts_statp->st_flags & (SF_APPEND|SF_IMMUTABLE)) &&
     lchflags(p->fts_accpath,
      p->fts_statp->st_flags &= ~(UF_APPEND|UF_IMMUTABLE)) < 0)
    goto err;
   continue;
  case 133:

   if (p->fts_number == 1)
    continue;
   break;
  default:
   if (!fflag &&
       !check(p->fts_path, p->fts_accpath, p->fts_statp))
    continue;
  }

  rval = 0;
  if (!uid &&
      (p->fts_statp->st_flags & (UF_APPEND|UF_IMMUTABLE)) &&
      !(p->fts_statp->st_flags & (SF_APPEND|SF_IMMUTABLE)))
   rval = lchflags(p->fts_accpath,
           p->fts_statp->st_flags &= ~(UF_APPEND|UF_IMMUTABLE));
  if (rval == 0) {





   switch (p->fts_info) {
   case 133:
   case 134:
    rval = rmdir(p->fts_accpath);
    if (rval == 0 || (fflag && errno == ENOENT)) {
     if (rval == 0 && vflag)
      (void)printf("%s\n",
          p->fts_path);
     if (rval == 0 && info) {
      info = 0;
      (void)printf("%s\n",
          p->fts_path);
     }
     continue;
    }
    break;

   case 128:
    rval = undelete(p->fts_accpath);
    if (rval == 0 && (fflag && errno == ENOENT)) {
     if (vflag)
      (void)printf("%s\n",
          p->fts_path);
     if (info) {
      info = 0;
      (void)printf("%s\n",
          p->fts_path);
     }
     continue;
    }
    break;

   case 130:




    if (fflag)
     continue;


   case 131:
   case 129:
   default:
    rval = unlink(p->fts_accpath);
    if (rval == 0 || (fflag && errno == ENOENT)) {
     if (rval == 0 && vflag)
      (void)printf("%s\n",
          p->fts_path);
     if (rval == 0 && info) {
      info = 0;
      (void)printf("%s\n",
          p->fts_path);
     }
     continue;
    }
   }
  }
err:
  warn("%s", p->fts_path);
  eval = 1;
 }
 if (!fflag && errno)
  err(1, "fts_read");
 fts_close(fts);
}
