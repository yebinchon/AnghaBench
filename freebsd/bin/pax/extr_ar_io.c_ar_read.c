
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKMULT ;





 int arfd ;
 int artyp ;
 int arvol ;
 int errno ;
 int invld_rec ;
 int io_ok ;
 int lstrval ;
 int paxwarn (int ,char*,int ) ;
 int rdblksz ;
 int read (int ,char*,int) ;
 int syswarn (int,int ,char*,int ) ;

int
ar_read(char *buf, int cnt)
{
 int res = 0;




 if (lstrval <= 0)
  return(lstrval);




 switch (artyp) {
 case 128:
  if ((res = read(arfd, buf, cnt)) > 0) {







   io_ok = 1;
   if (res != rdblksz) {
    rdblksz = res;
    if (rdblksz % BLKMULT)
     invld_rec = 1;
   }
   return(res);
  }
  break;
 case 129:
 case 132:
 case 131:
 case 130:
 default:







  if ((res = read(arfd, buf, cnt)) > 0) {
   io_ok = 1;
   return(res);
  }
  break;
 }




 lstrval = res;
 if (res < 0)
  syswarn(1, errno, "Failed read on archive volume %d", arvol);
 else
  paxwarn(0, "End of archive volume %d reached", arvol);
 return(res);
}
