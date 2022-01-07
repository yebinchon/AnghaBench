
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * par; int adapter; } ;
struct savagefb_par {TYPE_1__ chan; } ;
struct fb_info {struct savagefb_par* par; } ;


 int i2c_del_adapter (int *) ;

void savagefb_delete_i2c_busses(struct fb_info *info)
{
 struct savagefb_par *par = info->par;

 if (par->chan.par)
  i2c_del_adapter(&par->chan.adapter);

 par->chan.par = ((void*)0);
}
