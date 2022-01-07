
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_hdav {int hdmi; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_hdav* model_data; } ;


 int set_pcm1796_params (struct oxygen*,struct snd_pcm_hw_params*) ;
 int xonar_set_hdmi_params (struct oxygen*,int *,struct snd_pcm_hw_params*) ;

__attribute__((used)) static void set_hdav_params(struct oxygen *chip,
       struct snd_pcm_hw_params *params)
{
 struct xonar_hdav *data = chip->model_data;

 set_pcm1796_params(chip, params);
 xonar_set_hdmi_params(chip, &data->hdmi, params);
}
