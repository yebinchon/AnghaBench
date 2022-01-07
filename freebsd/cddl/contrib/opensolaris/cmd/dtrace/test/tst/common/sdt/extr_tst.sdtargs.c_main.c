
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int err (int,char*) ;
 int sleep (int) ;
 scalar_t__ sysctlbyname (char*,int *,int *,int*,int) ;

int
main(int argc, char **argv)
{
 int val = 1;

 while (1) {
  if (sysctlbyname("debug.dtracetest.sdttest", ((void*)0), ((void*)0), &val,
      sizeof(val)))
   err(1, "sysctlbyname");

  sleep(1);
 }

 return (0);
}
