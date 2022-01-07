
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct info {int t; } ;


 scalar_t__ cfgetospeed (int *) ;
 int printf (char*,int ) ;

void
f_speed(struct info *ip)
{

 (void)printf("%lu\n", (u_long)cfgetospeed(&ip->t));
}
