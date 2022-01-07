
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffb_par {int dummy; } ;
struct fb_info {scalar_t__ par; } ;


 int FFBWait (struct ffb_par*) ;

__attribute__((used)) static int ffb_sync(struct fb_info *p)
{
 struct ffb_par *par = (struct ffb_par *)p->par;

 FFBWait(par);
 return 0;
}
