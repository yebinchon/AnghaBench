
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int (* SavageWaitIdle ) (struct savagefb_par*) ;} ;
struct fb_info {struct savagefb_par* par; } ;


 int stub1 (struct savagefb_par*) ;

int savagefb_sync(struct fb_info *info)
{
 struct savagefb_par *par = info->par;

 par->SavageWaitIdle(par);
 return 0;
}
