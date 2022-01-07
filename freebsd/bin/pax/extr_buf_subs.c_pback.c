
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufpt ;
 int memcpy (int,char*,int) ;

void
pback(char *pt, int cnt)
{
 bufpt -= cnt;
 memcpy(bufpt, pt, cnt);
 return;
}
