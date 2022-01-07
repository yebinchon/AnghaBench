
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ref_freq; } ;
struct TYPE_9__ {TYPE_1__ pll; } ;
struct TYPE_13__ {int mctlwtst; int memrdbk; int opt; int opt2; } ;
struct TYPE_14__ {TYPE_6__ reg; } ;
struct TYPE_11__ {int vcomax; } ;
struct TYPE_10__ {int vcomax; } ;
struct TYPE_12__ {TYPE_4__ system; TYPE_3__ pixel; } ;
struct matrox_fb_info {TYPE_2__ features; TYPE_7__ values; TYPE_5__ limits; } ;



__attribute__((used)) static void default_pins3(struct matrox_fb_info *minfo)
{

 minfo->limits.pixel.vcomax =
 minfo->limits.system.vcomax = 230000;
 minfo->values.reg.mctlwtst = 0x01250A21;
 minfo->values.reg.memrdbk = 0x00000000;
 minfo->values.reg.opt = 0x00000C00;
 minfo->values.reg.opt2 = 0x00000000;
 minfo->features.pll.ref_freq = 27000;
}
