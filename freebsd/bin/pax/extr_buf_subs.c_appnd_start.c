
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int ARCHIVE ;
 int act ;
 scalar_t__ ar_app_ok () ;
 int ar_read (scalar_t__,scalar_t__) ;
 scalar_t__ ar_rev (scalar_t__) ;
 scalar_t__ ar_set_wr () ;
 scalar_t__ blksz ;
 scalar_t__ buf ;
 scalar_t__ bufend ;
 scalar_t__ bufpt ;
 scalar_t__ exit_val ;
 int paxwarn (int,char*) ;
 scalar_t__ rdblksz ;
 scalar_t__ rdcnt ;
 scalar_t__ wrblksz ;
 scalar_t__ wrcnt ;

int
appnd_start(off_t skcnt)
{
 int res;
 off_t cnt;

 if (exit_val != 0) {
  paxwarn(0, "Cannot append to an archive that may have flaws.");
  return(-1);
 }





 if (!wrblksz)
  wrblksz = blksz = rdblksz;
 else
  blksz = rdblksz;




 if (ar_app_ok() < 0)
  return(-1);







 skcnt += bufend - bufpt;
 if ((cnt = (skcnt/blksz) * blksz) < skcnt)
  cnt += blksz;
 if (ar_rev((off_t)cnt) < 0)
  goto out;






 if ((cnt -= skcnt) > 0) {






  bufpt = buf;
  bufend = buf + blksz;
  while (bufpt < bufend) {
   if ((res = ar_read(bufpt, rdblksz)) <= 0)
    goto out;
   bufpt += res;
  }
  if (ar_rev((off_t)(bufpt - buf)) < 0)
   goto out;
  bufpt = buf + cnt;
  bufend = buf + blksz;
 } else {



  bufend = buf + blksz;
  bufpt = buf;
 }
 rdblksz = blksz;
 rdcnt -= skcnt;
 wrcnt = 0;







 if (ar_set_wr() < 0)
  return(-1);
 act = ARCHIVE;
 return(0);

    out:
 paxwarn(1, "Unable to rewrite archive trailer, cannot append.");
 return(-1);
}
