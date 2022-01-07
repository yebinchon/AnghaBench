
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double c ;
 int usleep (int) ;

int
main(int argc, char **argv)
{
 double a = 1.56;
 double b = (double)argc;

 for (;;) {
  c *= a;
  c += b;
  (void) usleep(1000);
 }

 return (0);
}
