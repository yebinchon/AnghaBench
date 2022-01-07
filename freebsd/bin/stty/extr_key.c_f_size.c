
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_row; int ws_col; } ;
struct info {TYPE_1__ win; } ;


 int printf (char*,int,int) ;

void
f_size(struct info *ip)
{

 (void)printf("%d %d\n", ip->win.ws_row, ip->win.ws_col);
}
