
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtop {int mt_count; int mt_op; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {int flags; char* name; scalar_t__ offset; int dbsz; int db; int fd; } ;


 int ISPIPE ;
 int ISSEEK ;
 int MTBSR ;
 int MTFSR ;
 int MTIOCTOP ;
 int NOREAD ;
 int SEEK_CUR ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int ioctl (int ,int ,struct mtop*) ;
 int lseek (int ,int ,int ) ;
 TYPE_1__ out ;
 int read (int ,int ,int) ;
 int seek_offset (TYPE_1__*) ;
 int write (int ,int ,int) ;

void
pos_out(void)
{
 struct mtop t_op;
 off_t cnt;
 ssize_t n;






 if (out.flags & (ISSEEK | ISPIPE)) {
  errno = 0;
  if (lseek(out.fd, seek_offset(&out), SEEK_CUR) == -1 &&
      errno != 0)
   err(1, "%s", out.name);
  return;
 }


 if (out.offset < 0)
  errx(1, "%s: illegal offset", "oseek/seek");


 if (out.flags & NOREAD) {
  t_op.mt_op = MTFSR;
  t_op.mt_count = out.offset;

  if (ioctl(out.fd, MTIOCTOP, &t_op) == -1)
   err(1, "%s", out.name);
  return;
 }


 for (cnt = 0; cnt < out.offset; ++cnt) {
  if ((n = read(out.fd, out.db, out.dbsz)) > 0)
   continue;

  if (n == -1)
   err(1, "%s", out.name);






  t_op.mt_op = MTBSR;
  t_op.mt_count = 1;
  if (ioctl(out.fd, MTIOCTOP, &t_op) == -1)
   err(1, "%s", out.name);

  while (cnt++ < out.offset) {
   n = write(out.fd, out.db, out.dbsz);
   if (n == -1)
    err(1, "%s", out.name);
   if (n != out.dbsz)
    errx(1, "%s: write failure", out.name);
  }
  break;
 }
}
