
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int MIN (int,int) ;
 int SEEK_CUR ;
 int errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int syswarn (int,int ,char*,char*) ;
 int write (int,char*,int) ;

int
file_write(int fd, char *str, int cnt, int *rem, int *isempt, int sz,
 char *name)
{
 char *pt;
 char *end;
 int wcnt;
 char *st = str;




 while (cnt) {
  if (!*rem) {





   *isempt = 1;
   *rem = sz;
  }





  wcnt = MIN(cnt, *rem);
  cnt -= wcnt;
  *rem -= wcnt;
  if (*isempt) {




   pt = st;
   end = st + wcnt;




   while ((pt < end) && (*pt == '\0'))
    ++pt;

   if (pt == end) {



    if (lseek(fd, (off_t)wcnt, SEEK_CUR) < 0) {
     syswarn(1,errno,"File seek on %s",
         name);
     return(-1);
    }
    st = pt;
    continue;
   }



   *isempt = 0;
  }




  if (write(fd, st, wcnt) != wcnt) {
   syswarn(1, errno, "Failed write to file %s", name);
   return(-1);
  }
  st += wcnt;
 }
 return(st - str);
}
