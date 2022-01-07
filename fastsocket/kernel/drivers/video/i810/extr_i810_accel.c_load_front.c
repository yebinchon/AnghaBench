
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;
struct i810fb_par {int pitch; TYPE_1__ fb; } ;
struct fb_info {struct i810fb_par* par; } ;


 int FLUSH ;
 int FRONT_BUFFER ;
 scalar_t__ IRING_PAD ;
 int NOP ;
 int PARSER ;
 int PUT_RING (int) ;
 scalar_t__ begin_iring (struct fb_info*,scalar_t__) ;
 int end_iring (struct i810fb_par*) ;

__attribute__((used)) static inline void load_front(int offset, struct fb_info *info)
{
 struct i810fb_par *par = info->par;

 if (begin_iring(info, 8 + IRING_PAD)) return;

 PUT_RING(PARSER | FLUSH);
 PUT_RING(NOP);

 end_iring(par);

 if (begin_iring(info, 8 + IRING_PAD)) return;

 PUT_RING(PARSER | FRONT_BUFFER | ((par->pitch >> 3) << 8));
 PUT_RING((par->fb.offset << 12) + offset);

 end_iring(par);
}
