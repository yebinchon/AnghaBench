
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mdc800_isBusy (char* ch)
{
 int i=0;
 while (i<8)
 {
  if (ch [i] != (char)0x99)
   return 0;
  i++;
 }
 return 1;
}
