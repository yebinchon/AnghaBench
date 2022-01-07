
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int activate; } ;
struct fb_info {int flags; } ;


 int FBINFO_MISC_USEREVENT ;
 int FB_ACTIVATE_FORCE ;
 int acquire_console_sem () ;
 int fb_set_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int release_console_sem () ;

__attribute__((used)) static int activate(struct fb_info *fb_info, struct fb_var_screeninfo *var)
{
 int err;

 var->activate |= FB_ACTIVATE_FORCE;
 acquire_console_sem();
 fb_info->flags |= FBINFO_MISC_USEREVENT;
 err = fb_set_var(fb_info, var);
 fb_info->flags &= ~FBINFO_MISC_USEREVENT;
 release_console_sem();
 if (err)
  return err;
 return 0;
}
