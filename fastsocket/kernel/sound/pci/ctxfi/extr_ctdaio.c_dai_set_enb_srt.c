
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* dai_srt_set_et ) (int ,unsigned int) ;} ;
struct dai {int ctrl_blk; scalar_t__ hw; } ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int dai_set_enb_srt(struct dai *dai, unsigned int enb)
{
 ((struct hw *)dai->hw)->dai_srt_set_et(dai->ctrl_blk, enb);
 return 0;
}
