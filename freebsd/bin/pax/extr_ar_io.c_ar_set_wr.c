
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 scalar_t__ ISREG ;
 int SEEK_CUR ;
 int arfd ;
 scalar_t__ artyp ;
 int errno ;
 scalar_t__ ftruncate (int ,int ) ;
 int lseek (int ,int ,int ) ;
 int syswarn (int,int ,char*) ;
 scalar_t__ wr_trail ;

int
ar_set_wr(void)
{
 off_t cpos;





 wr_trail = 0;




 if (artyp != ISREG)
  return(0);





 if (((cpos = lseek(arfd, (off_t)0L, SEEK_CUR)) < 0) ||
     (ftruncate(arfd, cpos) < 0)) {
  syswarn(1, errno, "Unable to truncate archive file");
  return(-1);
 }
 return(0);
}
