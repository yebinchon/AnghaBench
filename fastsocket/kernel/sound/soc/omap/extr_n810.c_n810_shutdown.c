
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int clk_disable (int ) ;
 int sys_clkout2 ;

__attribute__((used)) static void n810_shutdown(struct snd_pcm_substream *substream)
{
 clk_disable(sys_clkout2);
}
