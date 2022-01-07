
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int ldisc; int win; int t; } ;


 int BSD ;
 int print (int *,int *,int ,int ) ;

void
f_all(struct info *ip)
{
 print(&ip->t, &ip->win, ip->ldisc, BSD);
}
