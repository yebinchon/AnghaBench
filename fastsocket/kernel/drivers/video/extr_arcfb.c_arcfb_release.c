
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct arcfb_par {int ref_count; } ;


 int EINVAL ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static int arcfb_release(struct fb_info *info, int user)
{
 struct arcfb_par *par = info->par;
 int count = atomic_read(&par->ref_count);

 if (!count)
  return -EINVAL;
 atomic_dec(&par->ref_count);
 return 0;
}
