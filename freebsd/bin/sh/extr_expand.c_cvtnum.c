
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
cvtnum(int num, char *buf)
{
 char temp[32];
 int neg = num < 0;
 char *p = temp + 31;

 temp[31] = '\0';

 do {
  *--p = num % 10 + '0';
 } while ((num /= 10) != 0);

 if (neg)
  *--p = '-';

 memcpy(buf, p, temp + 32 - p);
}
