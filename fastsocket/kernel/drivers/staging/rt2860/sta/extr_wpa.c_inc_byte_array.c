
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UCHAR ;



void inc_byte_array(UCHAR *counter, int len)
{
 int pos = len - 1;
 while (pos >= 0) {
  counter[pos]++;
  if (counter[pos] != 0)
   break;
  pos--;
 }
}
