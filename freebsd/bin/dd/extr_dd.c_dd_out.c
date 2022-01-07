
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ssize_t ;
struct TYPE_4__ {size_t dbcnt; size_t dbsz; int seek_offset; int flags; int * db; int * dbp; int name; int fd; } ;
struct TYPE_3__ {size_t bytes; int out_part; int out_full; } ;


 int BISZERO (int *,size_t) ;
 int C_SPARSE ;
 scalar_t__ EINTR ;
 int ISCHR ;
 int ISTAPE ;
 int SEEK_CUR ;
 int ddflags ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int errx (int,char*,int ) ;
 int lseek (int ,scalar_t__,int ) ;
 int memmove (int *,int *,size_t) ;
 TYPE_2__ out ;
 scalar_t__ pending ;
 TYPE_1__ st ;
 int warnx (char*,int ) ;
 size_t write (int ,int *,size_t) ;

void
dd_out(int force)
{
 u_char *outp;
 size_t cnt, n;
 ssize_t nw;
 static int warned;
 int sparse;
 outp = out.db;






 for (n = force ? out.dbcnt : out.dbsz;; n = out.dbsz) {
  cnt = n;
  do {
   sparse = 0;
   if (ddflags & C_SPARSE) {

    sparse = BISZERO(outp, cnt);
   }
   if (sparse && !force) {
    pending += cnt;
    nw = cnt;
   } else {
    if (pending != 0) {






     out.seek_offset = lseek(out.fd, pending, SEEK_CUR);
     if (out.seek_offset == -1)
      err(2, "%s: seek error creating sparse file",
          out.name);
     pending = 0;
    }
    if (cnt) {
     nw = write(out.fd, outp, cnt);
     out.seek_offset = 0;
    } else {
     return;
    }
   }

   if (nw <= 0) {
    if (nw == 0)
     errx(1, "%s: end of device", out.name);
    if (errno != EINTR)
     err(1, "%s", out.name);
    nw = 0;
   }

   outp += nw;
   st.bytes += nw;

   if ((size_t)nw == n && n == (size_t)out.dbsz)
    ++st.out_full;
   else
    ++st.out_part;

   if ((size_t) nw != cnt) {
    if (out.flags & ISTAPE)
     errx(1, "%s: short write on tape device",
         out.name);
    if (out.flags & ISCHR && !warned) {
     warned = 1;
     warnx("%s: short write on character device",
         out.name);
    }
   }

   cnt -= nw;
  } while (cnt != 0);

  if ((out.dbcnt -= n) < out.dbsz)
   break;
 }


 if (out.dbcnt)
  (void)memmove(out.db, out.dbp - out.dbcnt, out.dbcnt);
 out.dbp = out.db + out.dbcnt;
}
