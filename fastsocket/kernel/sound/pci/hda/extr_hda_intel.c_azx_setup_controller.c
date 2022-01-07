
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct azx_dev {unsigned int stream_tag; unsigned int bufsize; TYPE_1__ bdl; scalar_t__ frags; scalar_t__ format_val; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct azx {scalar_t__* position_fix; TYPE_2__ posbuf; } ;


 int DPLBASE ;
 unsigned int ICH6_DPLBASE_ENABLE ;
 scalar_t__ POS_FIX_LPIB ;
 int SD_BDLPL ;
 int SD_BDLPU ;
 int SD_CBL ;
 int SD_CTL ;
 unsigned int SD_CTL_STREAM_TAG_MASK ;
 unsigned int SD_CTL_STREAM_TAG_SHIFT ;
 unsigned int SD_CTL_TRAFFIC_PRIO ;
 int SD_FORMAT ;
 unsigned int SD_INT_MASK ;
 int SD_LVI ;
 unsigned int azx_readl (struct azx*,int ) ;
 unsigned int azx_sd_readl (struct azx_dev*,int ) ;
 int azx_sd_writel (struct azx_dev*,int ,unsigned int) ;
 int azx_sd_writew (struct azx_dev*,int ,scalar_t__) ;
 int azx_snoop (struct azx*) ;
 int azx_stream_clear (struct azx*,struct azx_dev*) ;
 int azx_writel (struct azx*,int ,unsigned int) ;
 unsigned int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int azx_setup_controller(struct azx *chip, struct azx_dev *azx_dev)
{
 unsigned int val;

 azx_stream_clear(chip, azx_dev);

 val = azx_sd_readl(azx_dev, SD_CTL);
 val = (val & ~SD_CTL_STREAM_TAG_MASK) |
  (azx_dev->stream_tag << SD_CTL_STREAM_TAG_SHIFT);
 if (!azx_snoop(chip))
  val |= SD_CTL_TRAFFIC_PRIO;
 azx_sd_writel(azx_dev, SD_CTL, val);


 azx_sd_writel(azx_dev, SD_CBL, azx_dev->bufsize);



 azx_sd_writew(azx_dev, SD_FORMAT, azx_dev->format_val);


 azx_sd_writew(azx_dev, SD_LVI, azx_dev->frags - 1);



 azx_sd_writel(azx_dev, SD_BDLPL, (u32)azx_dev->bdl.addr);

 azx_sd_writel(azx_dev, SD_BDLPU, upper_32_bits(azx_dev->bdl.addr));


 if (chip->position_fix[0] != POS_FIX_LPIB ||
     chip->position_fix[1] != POS_FIX_LPIB) {
  if (!(azx_readl(chip, DPLBASE) & ICH6_DPLBASE_ENABLE))
   azx_writel(chip, DPLBASE,
    (u32)chip->posbuf.addr | ICH6_DPLBASE_ENABLE);
 }


 azx_sd_writel(azx_dev, SD_CTL,
        azx_sd_readl(azx_dev, SD_CTL) | SD_INT_MASK);

 return 0;
}
