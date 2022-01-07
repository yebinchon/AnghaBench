
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int maven; } ;
struct matrox_fb_info {TYPE_2__ hw; TYPE_1__* outputs; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 scalar_t__ MATROXFB_OUTPUT_MODE_MONITOR ;
 int cve2_init_TV (struct matrox_fb_info*,int *) ;

__attribute__((used)) static int matroxfb_g450_program(void* md) {
 struct matrox_fb_info *minfo = md;

 if (minfo->outputs[1].mode != MATROXFB_OUTPUT_MODE_MONITOR) {
  cve2_init_TV(minfo, &minfo->hw.maven);
 }
 return 0;
}
