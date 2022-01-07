
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtop {int mt_count; int mt_op; } ;
typedef int off_t ;







 int MTBSR ;
 int MTIOCTOP ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int arfd ;
 int artyp ;
 int arvol ;
 int errno ;
 int get_phys () ;
 int ioctl (int ,int ,struct mtop*) ;
 int lseek (int ,int,int ) ;
 int lstrval ;
 int paxwarn (int,char*) ;
 int rdblksz ;
 int syswarn (int,int ,char*,...) ;

int
ar_rev(off_t sksz)
{
 off_t cpos;
 struct mtop mb;
 int phyblk;




 if (lstrval < 0)
  return(lstrval);

 switch(artyp) {
 case 130:
  if (sksz <= 0)
   break;



  paxwarn(1, "Reverse positioning on pipes is not supported.");
  lstrval = -1;
  return(-1);
 case 129:
 case 132:
 case 131:
 default:
  if (sksz <= 0)
   break;
  if ((cpos = lseek(arfd, (off_t)0L, SEEK_CUR)) < 0) {
   syswarn(1, errno,
      "Unable to obtain current archive byte offset");
   lstrval = -1;
   return(-1);
  }
  if ((cpos -= sksz) < (off_t)0L) {
   if (arvol > 1) {



    paxwarn(1,"Reverse position on previous volume.");
    lstrval = -1;
    return(-1);
   }
   cpos = (off_t)0L;
  }
  if (lseek(arfd, cpos, SEEK_SET) < 0) {
   syswarn(1, errno, "Unable to seek archive backwards");
   lstrval = -1;
   return(-1);
  }
  break;
 case 128:







  if ((phyblk = get_phys()) <= 0) {
   lstrval = -1;
   return(-1);
  }





  rdblksz = phyblk;





  if (sksz <= 0)
   break;




  if (sksz % phyblk) {
   paxwarn(1,
       "Tape drive unable to backspace requested amount");
   lstrval = -1;
   return(-1);
  }




  mb.mt_op = MTBSR;
  mb.mt_count = sksz/phyblk;
  if (ioctl(arfd, MTIOCTOP, &mb) < 0) {
   syswarn(1,errno, "Unable to backspace tape %d blocks.",
       mb.mt_count);
   lstrval = -1;
   return(-1);
  }
  break;
 }
 lstrval = 1;
 return(0);
}
