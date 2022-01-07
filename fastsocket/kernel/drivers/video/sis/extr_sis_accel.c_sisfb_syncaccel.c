
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_video_info {scalar_t__ sisvga_engine; } ;


 scalar_t__ SIS_300_VGA ;
 int SiS300Sync (struct sis_video_info*) ;
 int SiS310Sync (struct sis_video_info*) ;

void sisfb_syncaccel(struct sis_video_info *ivideo)
{
 if(ivideo->sisvga_engine == SIS_300_VGA) {



 } else {



 }
}
