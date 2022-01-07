
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_bt87x {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int snd_bt87x_create_risc (struct snd_bt87x*,struct snd_pcm_substream*,int ,int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_bt87x_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *hw_params)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (err < 0)
  return err;
 return snd_bt87x_create_risc(chip, substream,
         params_periods(hw_params),
         params_period_bytes(hw_params));
}
