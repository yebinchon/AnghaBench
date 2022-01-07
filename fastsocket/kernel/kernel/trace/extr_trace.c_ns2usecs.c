
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cycle_t ;


 int do_div (int,int) ;

unsigned long long ns2usecs(cycle_t nsec)
{
 nsec += 500;
 do_div(nsec, 1000);
 return nsec;
}
