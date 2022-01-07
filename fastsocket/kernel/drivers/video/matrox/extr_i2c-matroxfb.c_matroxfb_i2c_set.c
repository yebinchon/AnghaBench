
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int matroxfb_set_gpio (struct matrox_fb_info*,int,int) ;

__attribute__((used)) static inline void matroxfb_i2c_set(struct matrox_fb_info* minfo, int mask, int state) {
 if (state)
  state = 0;
 else
  state = mask;
 matroxfb_set_gpio(minfo, ~mask, state);
}
