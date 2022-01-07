
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int blkalgn; } ;


 int BLKMULT ;
 int EACCES ;
 int EDQUOT ;
 int EFBIG ;
 int EIO ;
 int ENOSPC ;
 int ENXIO ;





 int SEEK_CUR ;
 int arfd ;
 int artyp ;
 int arvol ;
 int errno ;
 TYPE_1__* frmt ;
 int ftruncate (int ,int ) ;
 int io_ok ;
 int lseek (int ,int ,int ) ;
 int lstrval ;
 int paxwarn (int,char*,...) ;
 int syswarn (int,int ,char*,int ) ;
 int wr_trail ;
 int write (int ,char*,int) ;

int
ar_write(char *buf, int bsz)
{
 int res;
 off_t cpos;





 if (lstrval <= 0)
  return(lstrval);

 if ((res = write(arfd, buf, bsz)) == bsz) {
  wr_trail = 1;
  io_ok = 1;
  return(bsz);
 }




 if (res < 0)
  lstrval = res;
 else
  lstrval = 0;

 switch (artyp) {
 case 129:
  if ((res > 0) && (res % BLKMULT)) {





   if ((cpos = lseek(arfd, (off_t)0L, SEEK_CUR)) < 0)
    break;
   cpos -= (off_t)res;
   if (ftruncate(arfd, cpos) < 0)
    break;
   res = lstrval = 0;
   break;
  }
  if (res >= 0)
   break;



  if ((errno == ENOSPC) || (errno == EFBIG) || (errno == EDQUOT))
   res = lstrval = 0;
  break;
 case 128:
 case 131:
 case 132:
  if (res >= 0)
   break;
  if (errno == EACCES) {
   paxwarn(0, "Write failed, archive is write protected.");
   res = lstrval = 0;
   return(0);
  }




  if ((errno == ENOSPC) || (errno == EIO) || (errno == ENXIO))
   res = lstrval = 0;
  break;
 case 130:
 default:



  break;
 }
 if (res >= 0) {
  if (res > 0)
   wr_trail = 1;
  io_ok = 1;
 }





 if (!wr_trail && (res <= 0)) {
  paxwarn(1,"Unable to append, trailer re-write failed. Quitting.");
  return(res);
 }

 if (res == 0)
  paxwarn(0, "End of archive volume %d reached", arvol);
 else if (res < 0)
  syswarn(1, errno, "Failed write to archive volume: %d", arvol);
 else if (!frmt->blkalgn || ((res % frmt->blkalgn) == 0))
  paxwarn(0,"WARNING: partial archive write. Archive MAY BE FLAWED");
 else
  paxwarn(1,"WARNING: partial archive write. Archive IS FLAWED");
 return(res);
}
