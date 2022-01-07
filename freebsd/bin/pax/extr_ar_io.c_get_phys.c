
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtop {int mt_count; void* mt_op; } ;
typedef int scbuf ;


 int MAXBLK ;
 void* MTBSF ;
 void* MTBSR ;
 int MTIOCTOP ;
 int arfd ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct mtop*) ;
 int lstrval ;
 int paxwarn (int,char*) ;
 int read (int ,char*,int) ;
 int syswarn (int,int ,char*,...) ;

__attribute__((used)) static int
get_phys(void)
{
 int padsz = 0;
 int res;
 int phyblk;
 struct mtop mb;
 char scbuf[MAXBLK];





 if (lstrval == 1) {




  while ((res = read(arfd, scbuf, sizeof(scbuf))) > 0)
   padsz += res;
  if (res < 0) {
   syswarn(1, errno, "Unable to locate tape filemark.");
   return(-1);
  }
 }





 mb.mt_op = MTBSF;
 mb.mt_count = 1;
 if (ioctl(arfd, MTIOCTOP, &mb) < 0) {
  syswarn(1, errno, "Unable to backspace over tape filemark.");
  return(-1);
 }





 mb.mt_op = MTBSR;
 mb.mt_count = 1;
 if (ioctl(arfd, MTIOCTOP, &mb) < 0) {
  syswarn(1, errno, "Unable to backspace over last tape block.");
  return(-1);
 }
 if ((phyblk = read(arfd, scbuf, sizeof(scbuf))) <= 0) {
  syswarn(1, errno, "Cannot determine archive tape blocksize.");
  return(-1);
 }





 while ((res = read(arfd, scbuf, sizeof(scbuf))) > 0)
  ;
 if (res < 0) {
  syswarn(1, errno, "Unable to locate tape filemark.");
  return(-1);
 }
 mb.mt_op = MTBSF;
 mb.mt_count = 1;
 if (ioctl(arfd, MTIOCTOP, &mb) < 0) {
  syswarn(1, errno, "Unable to backspace over tape filemark.");
  return(-1);
 }




 lstrval = 1;




 if (padsz == 0)
  return(phyblk);





 if (padsz % phyblk) {
  paxwarn(1, "Tape drive unable to backspace requested amount");
  return(-1);
 }





 mb.mt_op = MTBSR;
 mb.mt_count = padsz/phyblk;
 if (ioctl(arfd, MTIOCTOP, &mb) < 0) {
  syswarn(1,errno,"Unable to backspace tape over %d pad blocks",
      mb.mt_count);
  return(-1);
 }
 return(phyblk);
}
