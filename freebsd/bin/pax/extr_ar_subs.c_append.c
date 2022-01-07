
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_10__ {scalar_t__ pad; scalar_t__ skip; } ;
struct TYPE_9__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int udev; int (* end_rd ) () ;int name; } ;
typedef TYPE_1__ FSUB ;
typedef TYPE_2__ ARCHD ;


 scalar_t__ add_dev (TYPE_2__*) ;
 scalar_t__ appnd_start (int ) ;
 char* argv0 ;
 int chk_ftime (TYPE_2__*) ;
 scalar_t__ dev_start () ;
 int fprintf (int ,char*,char*) ;
 int fputs (char*,int ) ;
 TYPE_1__* frmt ;
 scalar_t__ ftime_start () ;
 scalar_t__ get_arc () ;
 int listf ;
 int lnk_end () ;
 scalar_t__ next_head (TYPE_2__*) ;
 int paxwarn (int,char*,int ,int ) ;
 int rd_skip (scalar_t__) ;
 scalar_t__ sel_chk (TYPE_2__*) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 int stub3 () ;
 scalar_t__ uflag ;
 scalar_t__ vflag ;
 int vfpart ;
 int wr_archive (TYPE_2__*,int) ;

void
append(void)
{
 ARCHD *arcn;
 int res;
 ARCHD archd;
 FSUB *orgfrmt;
 int udev;
 off_t tlen;

 arcn = &archd;
 orgfrmt = frmt;





 if (get_arc() < 0)
  return;
 if ((orgfrmt != ((void*)0)) && (orgfrmt != frmt)) {
  paxwarn(1, "Cannot mix current archive format %s with %s",
      frmt->name, orgfrmt->name);
  return;
 }




 if (((*frmt->options)() < 0) || ((*frmt->st_rd)() < 0))
  return;





 if (uflag && (ftime_start() < 0))
  return;
 if ((udev = frmt->udev) && (dev_start() < 0))
  return;




 if (vflag) {
  (void)fprintf(listf,
   "%s: Reading archive to position at the end...", argv0);
  vfpart = 1;
 }




 while (next_head(arcn) == 0) {



  if (sel_chk(arcn) != 0) {
   if (rd_skip(arcn->skip + arcn->pad) == 1)
    break;
   continue;
  }

  if (uflag) {




   if ((res = chk_ftime(arcn)) < 0)
    break;
   if (res > 0) {
    if (rd_skip(arcn->skip + arcn->pad) == 1)
     break;
    continue;
   }
  }







  if ((udev && (add_dev(arcn) < 0)) ||
      (rd_skip(arcn->skip + arcn->pad) == 1))
   break;
 }






 tlen = (*frmt->end_rd)();
 lnk_end();





 if (appnd_start(tlen) < 0)
  return;




 if (vflag && vfpart) {
  (void)fputs("done.\n", listf);
  vfpart = 0;
 }




 wr_archive(arcn, 1);
}
