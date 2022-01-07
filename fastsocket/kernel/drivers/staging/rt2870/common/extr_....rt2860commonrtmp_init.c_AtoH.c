
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int* PUCHAR ;


 int BtoH (int ) ;

void AtoH(char * src, UCHAR * dest, int destlen)
{
 char * srcptr;
 PUCHAR destTemp;

 srcptr = src;
 destTemp = (PUCHAR) dest;

 while(destlen--)
 {
  *destTemp = BtoH(*srcptr++) << 4;
  *destTemp += BtoH(*srcptr++);
  destTemp++;
 }
}
