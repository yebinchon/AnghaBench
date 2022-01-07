
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; scalar_t__ started; } ;
struct sh_mobile_lcdc_board_cfg {int board_data; int (* display_off ) (int ) ;} ;
struct TYPE_3__ {struct sh_mobile_lcdc_board_cfg board_cfg; } ;
struct sh_mobile_lcdc_chan {scalar_t__ enabled; TYPE_1__ cfg; TYPE_2__* info; scalar_t__ frame_end; int frame_end_wait; } ;
struct TYPE_4__ {int * fbdefio; int deferred_work; } ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int fb_deferred_io_cleanup (TYPE_2__*) ;
 int schedule_delayed_work (int *,int ) ;
 int sh_mobile_lcdc_clk_off (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_clk_on (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_start_stop (struct sh_mobile_lcdc_priv*,int ) ;
 int stub1 (int ) ;
 int wait_event (int ,scalar_t__) ;

__attribute__((used)) static void sh_mobile_lcdc_stop(struct sh_mobile_lcdc_priv *priv)
{
 struct sh_mobile_lcdc_chan *ch;
 struct sh_mobile_lcdc_board_cfg *board_cfg;
 int k;


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];
  if (!ch->enabled)
   continue;





  if (ch->info->fbdefio) {
   ch->frame_end = 0;
   schedule_delayed_work(&ch->info->deferred_work, 0);
   wait_event(ch->frame_end_wait, ch->frame_end);
   fb_deferred_io_cleanup(ch->info);
   ch->info->fbdefio = ((void*)0);
   sh_mobile_lcdc_clk_on(priv);
  }

  board_cfg = &ch->cfg.board_cfg;
  if (board_cfg->display_off)
   board_cfg->display_off(board_cfg->board_data);
 }


 if (priv->started) {
  sh_mobile_lcdc_start_stop(priv, 0);
  priv->started = 0;
 }


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++)
  if (priv->ch[k].enabled)
   sh_mobile_lcdc_clk_off(priv);
}
