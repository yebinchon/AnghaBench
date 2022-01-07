
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535audio {int dummy; } ;


 int ACC_CODEC_CNTL ;
 unsigned int ACC_CODEC_CNTL_WR_CMD ;
 unsigned int CMD_MASK ;
 unsigned int CMD_NEW ;
 int cs_writel (struct cs5535audio*,int ,unsigned int) ;
 int wait_till_cmd_acked (struct cs5535audio*,int) ;

__attribute__((used)) static void snd_cs5535audio_codec_write(struct cs5535audio *cs5535au,
     unsigned short reg, unsigned short val)
{
 unsigned int regdata;

 regdata = ((unsigned int) reg) << 24;
 regdata |= val;
 regdata &= CMD_MASK;
 regdata |= CMD_NEW;
 regdata &= ACC_CODEC_CNTL_WR_CMD;

 cs_writel(cs5535au, ACC_CODEC_CNTL, regdata);
 wait_till_cmd_acked(cs5535au, 50);
}
