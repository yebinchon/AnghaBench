
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int set; int arg; int t; } ;
typedef int speed_t ;


 scalar_t__ atoi (int ) ;
 int cfsetospeed (int *,int ) ;

void
f_ospeed(struct info *ip)
{

 cfsetospeed(&ip->t, (speed_t)atoi(ip->arg));
 ip->set = 1;
}
