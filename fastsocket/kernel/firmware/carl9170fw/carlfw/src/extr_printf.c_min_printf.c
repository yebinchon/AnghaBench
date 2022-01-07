
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putcharacter (char) ;

void min_printf(const char *fmt, ...)
{
 char ch;

 do {
  ch = *(fmt++);
  putcharacter(ch);
 } while (ch);
}
