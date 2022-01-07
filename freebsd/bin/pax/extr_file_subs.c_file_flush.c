
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_CUR ;
 int errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int syswarn (int,int ,char*,char*) ;
 scalar_t__ write (int,char*,int) ;

void
file_flush(int fd, char *fname, int isempt)
{
 static char blnk[] = "\0";





 if (!isempt)
  return;




 if (lseek(fd, (off_t)-1, SEEK_CUR) < 0) {
  syswarn(1, errno, "Failed seek on file %s", fname);
  return;
 }

 if (write(fd, blnk, 1) < 0)
  syswarn(1, errno, "Failed write to file %s", fname);
 return;
}
