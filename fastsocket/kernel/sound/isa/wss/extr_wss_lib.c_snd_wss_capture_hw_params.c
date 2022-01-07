
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int (* set_capture_format ) (struct snd_wss*,struct snd_pcm_hw_params*,unsigned char) ;} ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_wss* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 unsigned char snd_wss_get_format (struct snd_wss*,int ,int ) ;
 unsigned char snd_wss_get_rate (int ) ;
 int stub1 (struct snd_wss*,struct snd_pcm_hw_params*,unsigned char) ;

__attribute__((used)) static int snd_wss_capture_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct snd_wss *chip = snd_pcm_substream_chip(substream);
 unsigned char new_cdfr;
 int err;

 if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0)
  return err;
 new_cdfr = snd_wss_get_format(chip, params_format(hw_params),
      params_channels(hw_params)) |
      snd_wss_get_rate(params_rate(hw_params));
 chip->set_capture_format(chip, hw_params, new_cdfr);
 return 0;
}
