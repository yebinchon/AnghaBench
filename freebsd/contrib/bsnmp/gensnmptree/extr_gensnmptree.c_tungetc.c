
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int pbchar ;

__attribute__((used)) static void
tungetc(int c)
{

 if (pbchar != -1)
  abort();
 pbchar = c;
}
