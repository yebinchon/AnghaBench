
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtop {int mt_count; int mt_op; } ;
typedef int off_t ;
struct TYPE_2__ {long st_blksize; } ;


 scalar_t__ APPND ;
 scalar_t__ ARCHIVE ;
 long BLKMULT ;





 int MTFSR ;
 int MTIOCTOP ;
 int SEEK_CUR ;
 scalar_t__ act ;
 int arfd ;
 TYPE_1__ arsb ;
 int artyp ;
 int did_io ;
 scalar_t__ done ;
 scalar_t__ io_ok ;
 int ioctl (int ,int ,struct mtop*) ;
 int lseek (int ,int,int ) ;
 scalar_t__ lstrval ;
 int paxwarn (int,char*) ;

int
ar_rdsync(void)
{
 long fsbz;
 off_t cpos;
 off_t mpos;
 struct mtop mb;






 if ((done > 0) || (lstrval == 0))
  return(-1);

 if ((act == APPND) || (act == ARCHIVE)) {
  paxwarn(1, "Cannot allow updates to an archive with flaws.");
  return(-1);
 }
 if (io_ok)
  did_io = 1;

 switch(artyp) {
 case 128:
  if (io_ok) {
   io_ok = 0;
   lstrval = 1;
   break;
  }
  mb.mt_op = MTFSR;
  mb.mt_count = 1;
  if (ioctl(arfd, MTIOCTOP, &mb) < 0)
   break;
  lstrval = 1;
  break;
 case 129:
 case 131:
 case 132:



  io_ok = 0;
  if (((fsbz = arsb.st_blksize) <= 0) || (artyp != 129))
   fsbz = BLKMULT;
  if ((cpos = lseek(arfd, (off_t)0L, SEEK_CUR)) < 0)
   break;
  mpos = fsbz - (cpos % (off_t)fsbz);
  if (lseek(arfd, mpos, SEEK_CUR) < 0)
   break;
  lstrval = 1;
  break;
 case 130:
 default:



  io_ok = 0;
  break;
 }
 if (lstrval <= 0) {
  paxwarn(1, "Unable to recover from an archive read failure.");
  return(-1);
 }
 paxwarn(0, "Attempting to recover from an archive read failure.");
 return(0);
}
