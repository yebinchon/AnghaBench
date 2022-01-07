
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ st_size; } ;


 scalar_t__ ISREG ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int arfd ;
 TYPE_1__ arsb ;
 scalar_t__ artyp ;
 int errno ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int lstrval ;
 int syswarn (int,int ,char*) ;

int
ar_fow(off_t sksz, off_t *skipped)
{
 off_t cpos;
 off_t mpos;

 *skipped = 0;
 if (sksz <= 0)
  return(0);




 if (lstrval <= 0)
  return(lstrval);







 if (artyp != ISREG)
  return(0);




 if ((cpos = lseek(arfd, (off_t)0L, SEEK_CUR)) >= 0) {






  if ((mpos = cpos + sksz) > arsb.st_size) {
   *skipped = arsb.st_size - cpos;
   mpos = arsb.st_size;
  } else
   *skipped = sksz;
  if (lseek(arfd, mpos, SEEK_SET) >= 0)
   return(0);
 }
 syswarn(1, errno, "Forward positioning operation on archive failed");
 lstrval = -1;
 return(-1);
}
