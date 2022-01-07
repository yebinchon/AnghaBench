
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PROBE2 (int ,int ,int,int) ;
 int place ;
 int test_prov ;

int
main(int argc, char **argv)
{
 for (;;) {
  DTRACE_PROBE2(test_prov, place, 10, 4);
 }

 return (0);
}
