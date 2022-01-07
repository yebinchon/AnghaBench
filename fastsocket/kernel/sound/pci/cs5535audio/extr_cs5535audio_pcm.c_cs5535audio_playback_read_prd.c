
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs5535audio {int dummy; } ;


 int ACC_BM0_PRD ;
 int cs_readl (struct cs5535audio*,int ) ;

__attribute__((used)) static u32 cs5535audio_playback_read_prd(struct cs5535audio *cs5535au)
{
 return cs_readl(cs5535au, ACC_BM0_PRD);
}
