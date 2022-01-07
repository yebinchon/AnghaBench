
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpid () ;
 int grow1 (int) ;

void
grow(int frame)
{




 if (frame >= 2048)
  for (;;)
   getpid();

 grow1(++frame);
}
