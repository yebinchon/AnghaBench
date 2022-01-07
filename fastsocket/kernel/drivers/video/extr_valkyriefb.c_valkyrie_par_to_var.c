
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_par_valkyrie {int cmode; int vmode; } ;


 int mac_vmode_to_var (int ,int ,struct fb_var_screeninfo*) ;

__attribute__((used)) static inline int valkyrie_par_to_var(struct fb_par_valkyrie *par,
          struct fb_var_screeninfo *var)
{
 return mac_vmode_to_var(par->vmode, par->cmode, var);
}
