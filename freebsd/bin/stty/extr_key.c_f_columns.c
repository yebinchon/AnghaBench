
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_col; } ;
struct info {int wset; int arg; TYPE_1__ win; } ;


 int atoi (int ) ;

void
f_columns(struct info *ip)
{

 ip->win.ws_col = atoi(ip->arg);
 ip->wset = 1;
}
