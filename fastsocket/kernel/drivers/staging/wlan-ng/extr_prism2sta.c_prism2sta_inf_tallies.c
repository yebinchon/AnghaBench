
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ priv; } ;
typedef TYPE_2__ wlandevice_t ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {int tallies; } ;
typedef TYPE_3__ hfa384x_t ;
struct TYPE_7__ {int commtallies16; int commtallies32; } ;
struct TYPE_10__ {int framelen; TYPE_1__ info; } ;
typedef TYPE_4__ hfa384x_InfFrame_t ;
typedef int hfa384x_CommTallies32_t ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void prism2sta_inf_tallies(wlandevice_t *wlandev,
      hfa384x_InfFrame_t *inf)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
 u16 *src16;
 u32 *dst;
 u32 *src32;
 int i;
 int cnt;






 cnt = sizeof(hfa384x_CommTallies32_t) / sizeof(u32);
 if (inf->framelen > 22) {
  dst = (u32 *) & hw->tallies;
  src32 = (u32 *) & inf->info.commtallies32;
  for (i = 0; i < cnt; i++, dst++, src32++)
   *dst += le32_to_cpu(*src32);
 } else {
  dst = (u32 *) & hw->tallies;
  src16 = (u16 *) & inf->info.commtallies16;
  for (i = 0; i < cnt; i++, dst++, src16++)
   *dst += le16_to_cpu(*src16);
 }

 return;
}
