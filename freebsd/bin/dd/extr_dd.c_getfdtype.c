
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int off_t ;
struct TYPE_3__ {int flags; int fd; int name; } ;
typedef TYPE_1__ IO ;


 int D_DISK ;
 int D_MEM ;
 int D_TAPE ;
 scalar_t__ ESPIPE ;
 int FIODTYPE ;
 int ISCHR ;
 int ISPIPE ;
 int ISSEEK ;
 int ISTAPE ;
 int ISTRUNC ;
 int SEEK_CUR ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int fstat (int ,struct stat*) ;
 int ioctl (int ,int ,int*) ;
 int lseek (int ,int ,int ) ;

__attribute__((used)) static void
getfdtype(IO *io)
{
 struct stat sb;
 int type;

 if (fstat(io->fd, &sb) == -1)
  err(1, "%s", io->name);
 if (S_ISREG(sb.st_mode))
  io->flags |= ISTRUNC;
 if (S_ISCHR(sb.st_mode) || S_ISBLK(sb.st_mode)) {
  if (ioctl(io->fd, FIODTYPE, &type) == -1) {
   err(1, "%s", io->name);
  } else {
   if (type & D_TAPE)
    io->flags |= ISTAPE;
   else if (type & (D_DISK | D_MEM))
    io->flags |= ISSEEK;
   if (S_ISCHR(sb.st_mode) && (type & D_TAPE) == 0)
    io->flags |= ISCHR;
  }
  return;
 }
 errno = 0;
 if (lseek(io->fd, (off_t)0, SEEK_CUR) == -1 && errno == ESPIPE)
  io->flags |= ISPIPE;
 else
  io->flags |= ISSEEK;
}
