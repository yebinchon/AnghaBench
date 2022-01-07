
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_6__ {int dbsz; int dbrcnt; int flags; scalar_t__ dbp; scalar_t__ dbcnt; int name; int fd; } ;
struct TYPE_5__ {scalar_t__ dbcnt; } ;
struct TYPE_4__ {int swab; scalar_t__ in_part; scalar_t__ in_full; } ;


 int C_BLOCK ;
 int C_BS ;
 int C_FILL ;
 int C_IFULLBLOCK ;
 int C_NOERROR ;
 int C_NOTRUNC ;
 int C_SWAB ;
 int C_SYNC ;
 int C_UNBLOCK ;
 int ISSEEK ;
 int SEEK_CUR ;
 int cfunc () ;
 int cpy_cnt ;
 int dd_out (int) ;
 int ddflags ;
 int err (int,char*,int ) ;
 char fill_char ;
 TYPE_3__ in ;
 scalar_t__ lseek (int ,int ,int ) ;
 int memset (scalar_t__,char,int) ;
 scalar_t__ need_progress ;
 scalar_t__ need_summary ;
 TYPE_2__ out ;
 int progress () ;
 int read (int ,scalar_t__,int) ;
 scalar_t__ speed ;
 int speed_limit () ;
 TYPE_1__ st ;
 int stub1 () ;
 int summary () ;
 int swapbytes (scalar_t__,size_t) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
dd_in(void)
{
 ssize_t n;

 for (;;) {
  switch (cpy_cnt) {
  case -1:
   return;
  case 0:
   break;
  default:
   if (st.in_full + st.in_part >= (uintmax_t)cpy_cnt)
    return;
   break;
  }

  if (speed > 0)
   speed_limit();





  if (ddflags & C_SYNC) {
   if (ddflags & C_FILL)
    memset(in.dbp, fill_char, in.dbsz);
   else if (ddflags & (C_BLOCK | C_UNBLOCK))
    memset(in.dbp, ' ', in.dbsz);
   else
    memset(in.dbp, 0, in.dbsz);
  }

  in.dbrcnt = 0;
fill:
  n = read(in.fd, in.dbp + in.dbrcnt, in.dbsz - in.dbrcnt);


  if (n == 0 && in.dbrcnt == 0)
   return;


  if (n == -1) {




   if (!(ddflags & C_NOERROR))
    err(1, "%s", in.name);
   warn("%s", in.name);
   summary();







   if (in.flags & ISSEEK &&
       lseek(in.fd, (off_t)in.dbsz, SEEK_CUR))
    warn("%s", in.name);


   if (!(ddflags & C_SYNC))
    continue;
  }


  if (ddflags & C_SYNC)
   n = in.dbsz;


  in.dbrcnt += n;


  if (in.dbrcnt == in.dbsz)
   ++st.in_full;
  else if (ddflags & C_IFULLBLOCK && n != 0)
   goto fill;
  else
   ++st.in_part;


  in.dbcnt += in.dbrcnt;






  if ((ddflags & ~(C_NOERROR | C_NOTRUNC | C_SYNC)) == C_BS) {
   out.dbcnt = in.dbcnt;
   dd_out(1);
   in.dbcnt = 0;
   continue;
  }

  if (ddflags & C_SWAB) {
   if ((n = in.dbrcnt) & 1) {
    ++st.swab;
    --n;
   }
   swapbytes(in.dbp, (size_t)n);
  }


  in.dbp += in.dbrcnt;
  (*cfunc)();
  if (need_summary)
   summary();
  if (need_progress)
   progress();
 }
}
