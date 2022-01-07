
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; int contrast; } ;
struct TYPE_4__ {TYPE_1__ tvo_params; } ;
struct matrox_fb_info {TYPE_2__ altout; } ;


 int BLMIN ;
 int WLMAX ;
 int max (int const,int) ;
 int min (int const,int ) ;

__attribute__((used)) static void g450_compute_bwlevel(const struct matrox_fb_info *minfo, int *bl,
     int *wl)
{
 const int b = minfo->altout.tvo_params.brightness + BLMIN;
 const int c = minfo->altout.tvo_params.contrast;

 *bl = max(b - c, BLMIN);
 *wl = min(b + c, WLMAX);
}
