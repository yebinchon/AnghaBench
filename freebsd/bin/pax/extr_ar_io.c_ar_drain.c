
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drbuf ;


 scalar_t__ ISPIPE ;
 int MAXBLK ;
 int arfd ;
 scalar_t__ artyp ;
 int lstrval ;
 int read (int ,char*,int) ;

void
ar_drain(void)
{
 int res;
 char drbuf[MAXBLK];






 if ((artyp != ISPIPE) || (lstrval <= 0))
  return;




 while ((res = read(arfd, drbuf, sizeof(drbuf))) > 0)
  ;
 lstrval = res;
}
