
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {int btype; int SFR; } ;


 int BT_ALPINE ;
 int BT_GD5480 ;
 int BT_PICASSO ;
 int BT_PICASSO4 ;



 int WSFR (struct cirrusfb_info*,int) ;

__attribute__((used)) static void switch_monitor(struct cirrusfb_info *cinfo, int on)
{
}
