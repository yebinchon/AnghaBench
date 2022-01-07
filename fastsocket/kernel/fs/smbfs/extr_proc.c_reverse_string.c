
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void reverse_string(char *buf, int len)
{
 char c;
 char *end = buf+len-1;

 while(buf < end) {
  c = *buf;
  *(buf++) = *end;
  *(end--) = c;
 }
}
