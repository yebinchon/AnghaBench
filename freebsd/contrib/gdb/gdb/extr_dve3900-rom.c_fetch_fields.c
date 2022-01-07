
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bit_field {int length; unsigned long start; int * suffix; int * prefix; } ;
typedef int buf ;


 int monitor_expect (int *,char*,int) ;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static unsigned long
fetch_fields (struct bit_field *bf)
{
  char buf[20];
  unsigned long val = 0;
  unsigned long bits;

  for (; bf->prefix != ((void*)0); bf++)
    {
      monitor_expect (bf->prefix, ((void*)0), 0);
      monitor_expect (bf->suffix, buf, sizeof (buf));
      if (bf->length != 0)
 {
   bits = strtoul (buf, ((void*)0), 16);
   bits &= ((1 << bf->length) - 1);
   val |= bits << bf->start;
 }

    }

  return val;
}
