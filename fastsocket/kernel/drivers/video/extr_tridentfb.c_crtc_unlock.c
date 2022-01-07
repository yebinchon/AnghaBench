
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int VGA_CRTC_V_SYNC_END ;
 int read3X4 (struct tridentfb_par*,int ) ;
 int write3X4 (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static inline void crtc_unlock(struct tridentfb_par *par)
{
 write3X4(par, VGA_CRTC_V_SYNC_END,
   read3X4(par, VGA_CRTC_V_SYNC_END) & 0x7F);
}
