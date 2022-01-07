
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int time_t ;
struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
typedef scalar_t__ off_t ;
struct TYPE_18__ {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_2__* pat; scalar_t__ pad; scalar_t__ skip; int name; TYPE_1__ sb; } ;
struct TYPE_19__ {int * chdname; } ;
struct TYPE_17__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int (* rd_data ) (TYPE_3__*,int,scalar_t__*) ;int (* end_rd ) () ;} ;
typedef TYPE_3__ ARCHD ;


 scalar_t__ Dflag ;
 scalar_t__ PAX_CTG ;
 scalar_t__ PAX_HLK ;
 scalar_t__ PAX_HRG ;
 scalar_t__ PAX_REG ;
 int SIG_BLOCK ;
 scalar_t__ Yflag ;
 scalar_t__ Zflag ;
 int ar_close () ;
 scalar_t__ chdir (int *) ;
 int cwdfd ;
 scalar_t__ dir_start () ;
 int errno ;
 scalar_t__ fchdir (int ) ;
 int file_close (TYPE_3__*,int) ;
 int file_creat (TYPE_3__*) ;
 int fputs (int ,int ) ;
 TYPE_14__* frmt ;
 scalar_t__ get_arc () ;
 scalar_t__ iflag ;
 int listf ;
 int lnk_creat (TYPE_3__*) ;
 int ls_list (TYPE_3__*,int ,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int mod_name (TYPE_3__*) ;
 scalar_t__ name_start () ;
 scalar_t__ next_head (TYPE_3__*) ;
 int node_creat (TYPE_3__*) ;
 int pat_chk () ;
 int pat_match (TYPE_3__*) ;
 scalar_t__ pat_sel (TYPE_3__*) ;
 int proc_dir () ;
 int purg_lnk (TYPE_3__*) ;
 int putc (char,int ) ;
 int rd_skip (scalar_t__) ;
 int s_mask ;
 scalar_t__ sel_chk (TYPE_3__*) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 int stub3 (TYPE_3__*,int,scalar_t__*) ;
 int stub4 () ;
 int syswarn (int,int ,char*,...) ;
 int time (int *) ;
 scalar_t__ uflag ;
 int vflag ;
 int vfpart ;

void
extract(void)
{
 ARCHD *arcn;
 int res;
 off_t cnt;
 ARCHD archd;
 struct stat sb;
 int fd;
 time_t now;

 arcn = &archd;





 if ((get_arc() < 0) || ((*frmt->options)() < 0) ||
     ((*frmt->st_rd)() < 0) || (dir_start() < 0))
  return;





 if (iflag && (name_start() < 0))
  return;

 now = time(((void*)0));





 while (next_head(arcn) == 0) {





  if ((res = pat_match(arcn)) < 0)
   break;

  if ((res > 0) || (sel_chk(arcn) != 0)) {




   (void)rd_skip(arcn->skip + arcn->pad);
   continue;
  }
  if ((uflag || Dflag) && ((lstat(arcn->name, &sb) == 0))) {
   if (uflag && Dflag) {
    if ((arcn->sb.st_mtime <= sb.st_mtime) &&
        (arcn->sb.st_ctime <= sb.st_ctime)) {
     (void)rd_skip(arcn->skip + arcn->pad);
     continue;
    }
   } else if (Dflag) {
    if (arcn->sb.st_ctime <= sb.st_ctime) {
     (void)rd_skip(arcn->skip + arcn->pad);
     continue;
    }
   } else if (arcn->sb.st_mtime <= sb.st_mtime) {
    (void)rd_skip(arcn->skip + arcn->pad);
    continue;
   }
  }




  if ((pat_sel(arcn) < 0) || ((res = mod_name(arcn)) < 0))
   break;
  if (res > 0) {



   purg_lnk(arcn);
   (void)rd_skip(arcn->skip + arcn->pad);
   continue;
  }





  if ((Yflag || Zflag) && ((lstat(arcn->name, &sb) == 0))) {
   if (Yflag && Zflag) {
    if ((arcn->sb.st_mtime <= sb.st_mtime) &&
        (arcn->sb.st_ctime <= sb.st_ctime)) {
     (void)rd_skip(arcn->skip + arcn->pad);
     continue;
    }
   } else if (Yflag) {
    if (arcn->sb.st_ctime <= sb.st_ctime) {
     (void)rd_skip(arcn->skip + arcn->pad);
     continue;
    }
   } else if (arcn->sb.st_mtime <= sb.st_mtime) {
    (void)rd_skip(arcn->skip + arcn->pad);
    continue;
   }
  }

  if (vflag) {
   if (vflag > 1)
    ls_list(arcn, now, listf);
   else {
    (void)fputs(arcn->name, listf);
    vfpart = 1;
   }
  }




  if ((arcn->pat != ((void*)0)) && (arcn->pat->chdname != ((void*)0)))
   if (chdir(arcn->pat->chdname) != 0)
    syswarn(1, errno, "Cannot chdir to %s",
        arcn->pat->chdname);




  if ((arcn->type != PAX_REG) && (arcn->type != PAX_CTG)) {





   if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
    res = lnk_creat(arcn);
   else
    res = node_creat(arcn);

   (void)rd_skip(arcn->skip + arcn->pad);
   if (res < 0)
    purg_lnk(arcn);

   if (vflag && vfpart) {
    (void)putc('\n', listf);
    vfpart = 0;
   }
   continue;
  }




  if ((fd = file_creat(arcn)) < 0) {
   (void)rd_skip(arcn->skip + arcn->pad);
   purg_lnk(arcn);
   continue;
  }




  res = (*frmt->rd_data)(arcn, fd, &cnt);
  file_close(arcn, fd);
  if (vflag && vfpart) {
   (void)putc('\n', listf);
   vfpart = 0;
  }
  if (!res)
   (void)rd_skip(cnt + arcn->pad);




  if ((arcn->pat != ((void*)0)) && (arcn->pat->chdname != ((void*)0)))
   if (fchdir(cwdfd) != 0)
    syswarn(1, errno,
        "Can't fchdir to starting directory");
 }






 (void)(*frmt->end_rd)();
 (void)sigprocmask(SIG_BLOCK, &s_mask, ((void*)0));
 ar_close();
 proc_dir();
 pat_chk();
}
