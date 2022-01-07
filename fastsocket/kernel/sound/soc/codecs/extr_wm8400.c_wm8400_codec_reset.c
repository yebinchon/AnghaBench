
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400_priv {int wm8400; } ;
struct snd_soc_codec {struct wm8400_priv* private_data; } ;


 int wm8400_reset_codec_reg_cache (int ) ;

__attribute__((used)) static void wm8400_codec_reset(struct snd_soc_codec *codec)
{
 struct wm8400_priv *wm8400 = codec->private_data;

 wm8400_reset_codec_reg_cache(wm8400->wm8400);
}
