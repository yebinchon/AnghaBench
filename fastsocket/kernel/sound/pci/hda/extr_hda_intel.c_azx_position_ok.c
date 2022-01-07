
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct azx_dev {int start_wallclk; int period_wallclk; unsigned int period_bytes; } ;
struct azx {size_t dev_index; } ;


 int WALLCLK ;
 scalar_t__ WARN_ONCE (int,char*) ;
 unsigned int azx_get_position (struct azx*,struct azx_dev*,int) ;
 int azx_readl (struct azx*,int ) ;
 scalar_t__* bdl_pos_adj ;

__attribute__((used)) static int azx_position_ok(struct azx *chip, struct azx_dev *azx_dev)
{
 u32 wallclk;
 unsigned int pos;

 wallclk = azx_readl(chip, WALLCLK) - azx_dev->start_wallclk;
 if (wallclk < (azx_dev->period_wallclk * 2) / 3)
  return -1;

 pos = azx_get_position(chip, azx_dev, 1);

 if (WARN_ONCE(!azx_dev->period_bytes,
        "hda-intel: zero azx_dev->period_bytes"))
  return -1;
 if (wallclk < (azx_dev->period_wallclk * 5) / 4 &&
     pos % azx_dev->period_bytes > azx_dev->period_bytes / 2)

  return bdl_pos_adj[chip->dev_index] ? 0 : -1;
 azx_dev->start_wallclk += wallclk;
 return 1;
}
