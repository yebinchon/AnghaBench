
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int time_t ;
typedef scalar_t__ off_t ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ pad; int name; int org_name; } ;
struct TYPE_17__ {int hlk; scalar_t__ (* st_wr ) () ;int (* wr ) (TYPE_1__*) ;int (* wr_data ) (TYPE_1__*,int,scalar_t__*) ;int (* end_wr ) () ;} ;
typedef TYPE_1__ ARCHD ;


 int O_RDONLY ;
 scalar_t__ PAX_CTG ;
 scalar_t__ PAX_HRG ;
 scalar_t__ PAX_REG ;
 int SIG_BLOCK ;
 int ar_close () ;
 int chk_ftime (TYPE_1__*) ;
 scalar_t__ chk_lnk (TYPE_1__*) ;
 scalar_t__ docrc ;
 int errno ;
 int flcnt ;
 int fputs (int ,int ) ;
 TYPE_14__* frmt ;
 int ftree_chk () ;
 int ftree_notsel () ;
 int ftree_sel (TYPE_1__*) ;
 scalar_t__ ftree_start () ;
 scalar_t__ iflag ;
 int listf ;
 scalar_t__ lnk_start () ;
 int ls_list (TYPE_1__*,int ,int ) ;
 int mod_name (TYPE_1__*) ;
 scalar_t__ name_start () ;
 scalar_t__ next_file (TYPE_1__*) ;
 int open (int ,int ,int ) ;
 int proc_dir () ;
 int purg_lnk (TYPE_1__*) ;
 int putc (char,int ) ;
 int rdfile_close (TYPE_1__*,int*) ;
 int s_mask ;
 scalar_t__ sel_chk (TYPE_1__*) ;
 scalar_t__ set_crc (TYPE_1__*,int) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ stub1 () ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*,int,scalar_t__*) ;
 int stub4 () ;
 int syswarn (int,int ,char*,int ) ;
 scalar_t__ tflag ;
 int time (int *) ;
 scalar_t__ uflag ;
 int vflag ;
 int vfpart ;
 int wr_fin () ;
 scalar_t__ wr_skip (scalar_t__) ;

__attribute__((used)) static void
wr_archive(ARCHD *arcn, int is_app)
{
 int res;
 int hlk;
 int wr_one;
 off_t cnt;
 int (*wrf)(ARCHD *);
 int fd = -1;
 time_t now;





 if (((hlk = frmt->hlk) == 1) && (lnk_start() < 0))
  return;




 if ((ftree_start() < 0) || ((*frmt->st_wr)() < 0))
  return;
 wrf = frmt->wr;





 if (iflag && (name_start() < 0))
  return;




 wr_one = is_app;

 now = time(((void*)0));




 while (next_file(arcn) == 0) {



  if (sel_chk(arcn) != 0) {
   ftree_notsel();
   continue;
  }
  fd = -1;
  if (uflag) {




   if ((res = chk_ftime(arcn)) < 0)
    break;
   if (res > 0)
    continue;
  }





  ftree_sel(arcn);
  if (hlk && (chk_lnk(arcn) < 0))
   break;

  if ((arcn->type == PAX_REG) || (arcn->type == PAX_HRG) ||
      (arcn->type == PAX_CTG)) {






   if ((fd = open(arcn->org_name, O_RDONLY, 0)) < 0) {
    syswarn(1,errno, "Unable to open %s to read",
     arcn->org_name);
    purg_lnk(arcn);
    continue;
   }
  }




  if ((res = mod_name(arcn)) < 0) {




   rdfile_close(arcn, &fd);
   purg_lnk(arcn);
   break;
  }

  if ((res > 0) || (docrc && (set_crc(arcn, fd) < 0))) {




   rdfile_close(arcn, &fd);
   purg_lnk(arcn);
   continue;
  }

  if (vflag) {
   if (vflag > 1)
    ls_list(arcn, now, listf);
   else {
    (void)fputs(arcn->name, listf);
    vfpart = 1;
   }
  }
  ++flcnt;





  if ((res = (*wrf)(arcn)) < 0) {
   rdfile_close(arcn, &fd);
   break;
  }
  wr_one = 1;
  if (res > 0) {




   if (vflag && vfpart) {
    (void)putc('\n', listf);
    vfpart = 0;
   }
   rdfile_close(arcn, &fd);
   continue;
  }
  res = (*frmt->wr_data)(arcn, fd, &cnt);
  rdfile_close(arcn, &fd);
  if (vflag && vfpart) {
   (void)putc('\n', listf);
   vfpart = 0;
  }
  if (res < 0)
   break;




  if (((cnt > 0) && (wr_skip(cnt) < 0)) ||
      ((arcn->pad > 0) && (wr_skip(arcn->pad) < 0)))
   break;
 }







 if (wr_one) {
  (*frmt->end_wr)();
  wr_fin();
 }
 (void)sigprocmask(SIG_BLOCK, &s_mask, ((void*)0));
 ar_close();
 if (tflag)
  proc_dir();
 ftree_chk();
}
