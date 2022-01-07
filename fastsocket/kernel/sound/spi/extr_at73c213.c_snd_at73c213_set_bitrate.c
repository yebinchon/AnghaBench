
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_at73c213 {unsigned long bitrate; TYPE_3__* spi; TYPE_2__* ssc; TYPE_1__* board; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int regs; int clk; } ;
struct TYPE_4__ {int dac_clk; } ;


 int BITRATE_MAX ;
 int BITRATE_MIN ;
 int BITRATE_TARGET ;
 int CMR ;
 int ENXIO ;
 unsigned long clk_get_rate (int ) ;
 int clk_round_rate (int ,unsigned long) ;
 int clk_set_rate (int ,int) ;
 int dev_info (int *,char*,unsigned long,unsigned long) ;
 int ssc_writel (int ,int ,unsigned long) ;

__attribute__((used)) static int snd_at73c213_set_bitrate(struct snd_at73c213 *chip)
{
 unsigned long ssc_rate = clk_get_rate(chip->ssc->clk);
 unsigned long dac_rate_new, ssc_div;
 int status;
 unsigned long ssc_div_max, ssc_div_min;
 int max_tries;
 ssc_div = ssc_rate / (BITRATE_TARGET * 2 * 16);
 ssc_div_min = ssc_rate / (BITRATE_MAX * 2 * 16);
 ssc_div_max = ssc_rate / (BITRATE_MIN * 2 * 16);
 max_tries = (ssc_div_max - ssc_div_min) / 2;

 if (max_tries < 1)
  max_tries = 1;


 ssc_div = (ssc_div + 1) & ~1UL;

 if ((ssc_rate / (ssc_div * 2 * 16)) < BITRATE_MIN) {
  ssc_div -= 2;
  if ((ssc_rate / (ssc_div * 2 * 16)) > BITRATE_MAX)
   return -ENXIO;
 }


 do {

  if ((ssc_rate / (ssc_div * 2 * 16)) < BITRATE_MIN)
   return -ENXIO;


  dac_rate_new = 8 * (ssc_rate / ssc_div);

  status = clk_round_rate(chip->board->dac_clk, dac_rate_new);
  if (status < 0)
   return status;


  if ((status/256) == (dac_rate_new/256))
   goto set_rate;

  ssc_div += 2;
 } while (--max_tries);


 return -ENXIO;

set_rate:
 status = clk_set_rate(chip->board->dac_clk, status);
 if (status < 0)
  return status;


 ssc_writel(chip->ssc->regs, CMR, ssc_div/2);


 chip->bitrate = ssc_rate / (ssc_div * 16 * 2);

 dev_info(&chip->spi->dev,
   "at73c213: supported bitrate is %lu (%lu divider)\n",
   chip->bitrate, ssc_div);

 return 0;
}
