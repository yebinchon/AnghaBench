
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {int flags; scalar_t__ offset; size_t dbsz; int name; int db; int fd; } ;


 int C_NOERROR ;
 int ISPIPE ;
 int ISSEEK ;
 int SEEK_CUR ;
 int ddflags ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int files_cnt ;
 TYPE_1__ in ;
 int lseek (int ,int ,int ) ;
 scalar_t__ need_progress ;
 scalar_t__ need_summary ;
 int progress () ;
 scalar_t__ read (int ,int ,size_t) ;
 int seek_offset (TYPE_1__*) ;
 int summary () ;
 int warn (char*,int ) ;

void
pos_in(void)
{
 off_t cnt;
 int warned;
 ssize_t nr;
 size_t bcnt;


 if (in.flags & ISSEEK) {
  errno = 0;
  if (lseek(in.fd, seek_offset(&in), SEEK_CUR) == -1 &&
      errno != 0)
   err(1, "%s", in.name);
  return;
 }


 if (in.offset < 0)
  errx(1, "%s: illegal offset", "iseek/skip");






 for (bcnt = in.dbsz, cnt = in.offset, warned = 0; cnt;) {
  if ((nr = read(in.fd, in.db, bcnt)) > 0) {
   if (in.flags & ISPIPE) {
    if (!(bcnt -= nr)) {
     bcnt = in.dbsz;
     --cnt;
    }
   } else
    --cnt;
   if (need_summary)
    summary();
   if (need_progress)
    progress();
   continue;
  }

  if (nr == 0) {
   if (files_cnt > 1) {
    --files_cnt;
    continue;
   }
   errx(1, "skip reached end of input");
  }






  if (ddflags & C_NOERROR) {
   if (!warned) {
    warn("%s", in.name);
    warned = 1;
    summary();
   }
   continue;
  }
  err(1, "%s", in.name);
 }
}
