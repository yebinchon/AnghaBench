
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* dai_srt_set_rsr ) (int ,unsigned int) ;} ;
struct dai {int ctrl_blk; scalar_t__ hw; } ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int dai_set_srt_msr(struct dai *dai, unsigned int msr)
{
 unsigned int rsr;

 for (rsr = 0; msr > 1; msr >>= 1)
  rsr++;

 ((struct hw *)dai->hw)->dai_srt_set_rsr(dai->ctrl_blk, rsr);
 return 0;
}
