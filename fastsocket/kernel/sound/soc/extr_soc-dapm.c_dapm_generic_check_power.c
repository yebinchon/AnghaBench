
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int codec; } ;


 int dapm_clear_walk (int ) ;
 int is_connected_input_ep (struct snd_soc_dapm_widget*) ;
 int is_connected_output_ep (struct snd_soc_dapm_widget*) ;

__attribute__((used)) static int dapm_generic_check_power(struct snd_soc_dapm_widget *w)
{
 int in, out;

 in = is_connected_input_ep(w);
 dapm_clear_walk(w->codec);
 out = is_connected_output_ep(w);
 dapm_clear_walk(w->codec);
 return out != 0 && in != 0;
}
