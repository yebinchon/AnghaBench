
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_10__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int (* end_rd ) () ;} ;
struct TYPE_9__ {scalar_t__ pad; scalar_t__ skip; } ;
typedef TYPE_1__ ARCHD ;


 int SIG_BLOCK ;
 int ar_close () ;
 TYPE_8__* frmt ;
 scalar_t__ get_arc () ;
 scalar_t__ gidtb_start () ;
 int ls_list (TYPE_1__*,int ,int ) ;
 int mod_name (TYPE_1__*) ;
 scalar_t__ next_head (TYPE_1__*) ;
 int pat_chk () ;
 int pat_match (TYPE_1__*) ;
 scalar_t__ pat_sel (TYPE_1__*) ;
 int rd_skip (scalar_t__) ;
 int s_mask ;
 scalar_t__ sel_chk (TYPE_1__*) ;
 int sigprocmask (int ,int *,int *) ;
 int stdout ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 int stub3 () ;
 int time (int *) ;
 scalar_t__ uidtb_start () ;
 scalar_t__ vflag ;

void
list(void)
{
 ARCHD *arcn;
 int res;
 ARCHD archd;
 time_t now;

 arcn = &archd;







 if ((get_arc() < 0) || ((*frmt->options)() < 0) ||
     ((*frmt->st_rd)() < 0))
  return;

 if (vflag && ((uidtb_start() < 0) || (gidtb_start() < 0)))
  return;

 now = time(((void*)0));




 while (next_head(arcn) == 0) {




  if ((res = pat_match(arcn)) < 0)
   break;

  if ((res == 0) && (sel_chk(arcn) == 0)) {



   if (pat_sel(arcn) < 0)
    break;





   if ((res = mod_name(arcn)) < 0)
    break;
   if (res == 0)
    ls_list(arcn, now, stdout);
  }





  if (rd_skip(arcn->skip + arcn->pad) == 1)
   break;
 }





 (void)(*frmt->end_rd)();
 (void)sigprocmask(SIG_BLOCK, &s_mask, ((void*)0));
 ar_close();
 pat_chk();
}
