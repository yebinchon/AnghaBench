
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs5535audio {int dummy; } ;


 int ACC_BM0_PRD ;
 int cs_writel (struct cs5535audio*,int ,int ) ;

__attribute__((used)) static void cs5535audio_playback_setup_prd(struct cs5535audio *cs5535au,
        u32 prd_addr)
{
 cs_writel(cs5535au, ACC_BM0_PRD, prd_addr);
}
