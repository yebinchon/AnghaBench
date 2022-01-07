
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {int hdmi; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 int xonar_set_hdmi_params (struct oxygen*,int *,struct snd_pcm_hw_params*) ;

__attribute__((used)) static void set_hdav_slim_dac_params(struct oxygen *chip,
         struct snd_pcm_hw_params *params)
{
 struct xonar_wm87x6 *data = chip->model_data;

 xonar_set_hdmi_params(chip, &data->hdmi, params);
}
